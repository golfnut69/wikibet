package main

import (
	"database/sql"
	"html/template"
	"net/http"
	"time"

	_ "github.com/go-sql-driver/mysql"
	"github.com/gorilla/mux"
)

var tmpl *template.Template

type SportsMarket interface {
	marketid() int
}

type Sports struct {
	Comp   string
	Compid int
}

var compid int
var sport string
var comp string

func init() {
	tmpl = template.Must(template.ParseGlob("templates/*.html"))

}
func racingPage(w http.ResponseWriter, r *http.Request) {
	current_time := time.Now().Local().Format("02-01-2006 03:04")
	err := tmpl.ExecuteTemplate(w, "racing.html", current_time)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
}
func aboutPage(w http.ResponseWriter, r *http.Request) {
	err := tmpl.ExecuteTemplate(w, "about.html", nil)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
}

func contactPage(w http.ResponseWriter, r *http.Request) {
	err := tmpl.ExecuteTemplate(w, "contact.html", nil)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
}
func promotionsPage(w http.ResponseWriter, r *http.Request) {
	err := tmpl.ExecuteTemplate(w, "promotions.html", nil)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
}
func homePage(w http.ResponseWriter, r *http.Request) {

	r.ParseForm()
	userid := r.Form.Get("id")

	err := tmpl.ExecuteTemplate(w, "index.html", userid)
	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}
}
func sportsPage(w http.ResponseWriter, r *http.Request) {

	r.ParseForm()
	//sportid := r.Form.Get("id")

	db, err := sql.Open("mysql", "root:1111@tcp(127.0.0.1:3306)/wikibet")
	if err != nil {
		panic(err)
	}
	defer db.Close()
	rows, err := db.Query("SELECT compid,sport,comp FROM sports left join comps using (sportid)")
	if err != nil {
		panic(err)
	}
	//var sportsOnly []string
	//var sportidsOnly []int
	sports := make(map[string][]Sports)
	//var sports []Sports
	for rows.Next() {
		rows.Scan(&compid, &sport, &comp)
		//sports = append(sports, Sports{Sportid: sportid, Sport: sport, Comp: comp})
		//sportsOnly = append(sportsOnly, sport)
		//sportidsOnly = append(sportidsOnly, sportid)
		//sports = append(sports, Sports{Sport: sport, Comp: comp})
		sports[sport] = append(sports[sport], Sports{comp, compid})

	}

	//sports = map[string][]Sports{"Aussie Rules": {{"AFL", 1}, {"VFL", 2}}, "Rugby League": {{"NRL", 7}, {"SOO", 8}, {"DRL", 9}}}
	//sports["Aussie Rules"] = append(sports["Aussie Rules"], Sports{"AFL2", 21})

	err = tmpl.ExecuteTemplate(w, "sports.html", sports)

	if err != nil {
		http.Error(w, err.Error(), http.StatusInternalServerError)
		return
	}

}
func UniqueStrings(input []string) []string {
	u := make([]string, 0, len(input))
	m := make(map[string]bool)

	for _, val := range input {
		if _, ok := m[val]; !ok {
			m[val] = true
			u = append(u, val)
		}
	}

	return u
}
func UniqueInts(input []int) []int {
	u := make([]int, 0, len(input))
	m := make(map[int]bool)

	for _, val := range input {
		if _, ok := m[val]; !ok {
			m[val] = true
			u = append(u, val)
		}
	}

	return u
}
func main() {
	r := mux.NewRouter()
	//for s := range animals {
	//<div class="clear fl p10">sports[s]</div>
	//}

	//sports := []string{"Aussie Rules", "Rugby League", "Golf"}
	//err2 := tmpl.ExecuteTemplate(os.Stdout, "left.html", sports)
	//if err2 != nil {
	//	panic(err)
	//}

	//index.Execute(w, results)
	http.Handle("/css/", http.StripPrefix("/css/", http.FileServer(http.Dir("css"))))
	http.Handle("/img/", http.StripPrefix("/img/", http.FileServer(http.Dir("img"))))
	http.Handle("/js/", http.StripPrefix("/js/", http.FileServer(http.Dir("js"))))
	r.HandleFunc("/about", aboutPage)
	r.HandleFunc("/contact", contactPage)
	r.HandleFunc("/promotions", promotionsPage)
	r.HandleFunc("/sports/{id}", sportsPage)
	r.HandleFunc("/sports", sportsPage)
	r.HandleFunc("/racing", racingPage)
	r.HandleFunc("/", homePage)
	http.Handle("/", r)
	http.ListenAndServe(":8081", nil)

}
