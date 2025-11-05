# Infrastructure Expert Review Guidelines

When reviewing infrastructure code, check for:

## Software-Defined Infrastructure
- All infrastructure defined in code?
- No manual configuration steps?
- Infrastructure reproducible?

## Ansible Best Practices
- Proper role structure?
- Idempotent playbooks (can run multiple times safely)?
- Error handling with failed_when, changed_when?
- Variables properly organized?
- Tasks well-documented?
- Use of handlers for service restarts?

## Proxmox Integration
- Correct use of Proxmox APIs?
- VM/container templates defined?
- Resource allocation appropriate?
- Network configuration correct?

## Secrets Management
- Ansible Vault used for all secrets?
- Vault password in secrets.txt (in .gitignore)?
- No plaintext secrets in playbooks?
- Secrets encrypted at rest?

## Automation Method
- API keys/tokens used instead of SSH where possible?
- Authentication properly configured?
- API access scoped appropriately?

## Idempotency
- Playbooks can run multiple times safely?
- Check mode works?
- State properly managed?

## Error Handling
- Proper error checking?
- Rollback strategies defined?
- Failure notifications?

## Documentation
- Playbooks well-documented?
- README with usage instructions?
- Variable documentation?
- Dependencies listed?

## Reusability
- Roles generic and reusable?
- Variables parameterized?
- Works across environments (dev/staging/prod)?

## Debian 13 Components
- Native Debian 13 components preferred?
- Package versions specified?
- Repository configuration?
