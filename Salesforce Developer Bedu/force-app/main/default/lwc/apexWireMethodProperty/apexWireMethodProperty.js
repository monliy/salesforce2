import { LightningElement, wire } from 'lwc';
import getContactList from '@salesforce/apex/contactController.getContactList';

export default class apexWireMethodProperty extends LightningElement {
    @wire(getContactList) contacts;
}9