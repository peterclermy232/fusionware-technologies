export interface ContactFormData {
  name: string;
  email: string;
  subject: string;
  message: string;
  phone?: string;
  company?: string;
  timestamp?: Date;
}

export interface ContactResponse {
  success: boolean;
  message: string;
  id?: string;
  timestamp?: Date;
}

export interface ContactInfo {
  title: string;
  details: string[];
  icon: string;
  iconColor: string;
  bgColor: string;
  action?: () => void;
}

export interface SocialLink {
  icon: string;
  url: string;
  name: string;
  color?: string;
}

export interface ContactConfig {
  showPhone: boolean;
  showCompany: boolean;
  requirePhone: boolean;
  requireCompany: boolean;
  maxMessageLength: number;
  enableFileUpload: boolean;
}

export enum ContactFormField {
  NAME = 'name',
  EMAIL = 'email',
  PHONE = 'phone',
  COMPANY = 'company',
  SUBJECT = 'subject',
  MESSAGE = 'message'
}

export interface FormValidationError {
  field: ContactFormField;
  message: string;
  type: 'required' | 'email' | 'minlength' | 'maxlength' | 'pattern';
}
