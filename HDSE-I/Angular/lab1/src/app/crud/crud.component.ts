import { HttpClient, HttpClientModule } from '@angular/common/http';
import { Component } from '@angular/core';
import { FormsModule, NgForm } from '@angular/forms';

@Component({
  selector: 'app-crud',
  imports: [FormsModule, HttpClientModule],
  templateUrl: './crud.component.html',
  styleUrl: './crud.component.css'
})
export class CrudComponent {


  //CREATE
  
  constructor(private  http : HttpClient) {}
  
  createData(rec: {pn:string, pp:number, pd:string}){
    console.log(rec);
    this.http.post("https://angular2408b2-default-rtdb.firebaseio.com/products.json",rec)
    .subscribe((res : any) => {
      console.log(res); 
    })
  }
  



  // READ

  fetch : any = [];

  readData(){
    this.http.get<{[key : string] : any}>("https://angular2408b2-default-rtdb.firebaseio.com/products.json")
    .subscribe((res) => {
      this.fetch = [];
      for(let key in res){
        if(res.hasOwnProperty(key)){
          this.fetch.push({id: key, ...res[key]})
        }
      }
      console.log(this.fetch);
      
    })
  }
}
