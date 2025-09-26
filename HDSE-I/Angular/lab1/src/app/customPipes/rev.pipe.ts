import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'rev'
})
export class RevPipe implements PipeTransform {

  transform(value: string, ...args: string[]): string {
    return value.split('').reverse().join('');
  }

}
