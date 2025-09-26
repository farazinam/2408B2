import { DatePipe, LowerCasePipe, TitleCasePipe, UpperCasePipe } from '@angular/common';
import { Component } from '@angular/core';
import { RevPipe } from '../customPipes/rev.pipe';

@Component({
  selector: 'app-about',
  imports: [UpperCasePipe, LowerCasePipe, TitleCasePipe, DatePipe, RevPipe],
  templateUrl: './about.component.html',
  styleUrl: './about.component.css'
})
export class AboutComponent {
  name:string = 'faraz inam';
  name2:string = 'FARAZ INAM';

  today = new Date();

}
