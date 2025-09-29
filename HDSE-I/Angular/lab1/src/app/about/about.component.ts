import { DatePipe, LowerCasePipe, TitleCasePipe, UpperCasePipe } from '@angular/common';
import { Component, HostListener } from '@angular/core';
import { RevPipe } from '../customPipes/rev.pipe';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-about',
  imports: [UpperCasePipe, LowerCasePipe, TitleCasePipe, DatePipe, RevPipe, RouterLink],
  templateUrl: './about.component.html',
  styleUrl: './about.component.css'
})
export class AboutComponent {
  name:string = 'faraz inam';
  name2:string = 'FARAZ INAM';

  today = new Date();

 @HostListener('mouseenter')
 mouseEnterFn(){
  console.log("Entered!!");
 }
 @HostListener('window:scroll')
 scrollWindow(){
  console.log("Scrolls!!");
 }

 @HostListener('contextmenu')
 defaultEvent(event:MouseEvent){
  event.preventDefault();
 }
 
}
