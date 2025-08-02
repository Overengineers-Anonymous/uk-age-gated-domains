# UK Age-Gated Domains

A collection of domain lists that require age verification in the UK, maintained by the community and automatically combined into a master list.

---

This repository contains domain lists for websites and services that are subject to age verification requirements under the UK's Online Safety Act. The lists are organised by service/platform and automatically compiled into a single `domains.txt` file for easy consumption by automated systems.

## Usage

### Using the Compiled List

The `domains.txt` file contains all domains from all services, formatted with headers for easy identification:

```
# domain1.txt
domain1.com
sub.domain1.com
...

# domain2.txt
domain2.org
...
```

The compiled list is designed to be integrated directly into automated systems such as DNS lists, proxy configurations, and policy-based routing systems.

```bash
# Download the latest compiled list
curl -O https://raw.githubusercontent.com/Overengineers-Anonymous/uk-age-gated-domains/main/domains.txt
```

### Individual Service Lists

Access individual service lists from the `per_domain_lists/` directory if you need granular control.

## Contributing

We welcome contributions! Here's how you can help:

### Adding New Domains

1. **For existing services**: Edit the relevant file in `per_domain_lists/`
2. **For new services**: Create a new `.txt` file in `per_domain_lists/` named after the service

### File Format

- One domain per line
- No protocols (http://, https://)
- Comments start with `#`
- Include all subdomains and CDN domains affected by age gating
  - Keep it specific, don't add domains covering entire CDN providers (AWS, Cloudflare, Fastly, etc.)

Example:
```
# Service Name
example.com
www.example.com
api.example.com
cdn.example.com
```

## Legal Notice

These lists are maintained for informational/educational purposes and to assist with compliance efforts. Users should be aware of current UK legislation requirements.

## Automated Updates

The `domains.txt` file is automatically updated whenever changes are made to files in `per_domain_lists/`.
