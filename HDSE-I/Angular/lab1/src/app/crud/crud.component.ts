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

  constructor(private  http : HttpClient) {}

  createData(rec: {pn:string, pp:number, pd:string}){
    console.log(rec);
    this.http.post("https://angular2408b2-default-rtdb.firebaseio.com/abc.json",rec)
    .subscribe((res : any) => {
      console.log(res); 
    })
  }
}
