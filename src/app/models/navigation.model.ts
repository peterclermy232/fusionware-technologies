export interface NavItem {
  id: string;
  label: string;
  icon?: string;
  external?: boolean;
  url?: string;
}

export interface NavigationConfig {
  items: NavItem[];
  logo: {
    text: string;
    icon?: string;
    url?: string;
  };
  mobileBreakpoint?: number;
}
