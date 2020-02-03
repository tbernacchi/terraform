# digital_ocean cloud provider
Instructions to use this project.

## Requirements
- Digital Ocean account;
- Terraform v0.12.19;

## Instructions
This directory contains the terraform files to bring a simple droplet on digital ocean.

- You should create a personal access token to work with::<br/>
https://www.digitalocean.com/docs/api/create-personal-access-token/

- Export the token:
<pre>
export DO_PAT=<token> 
</pre> 
```
terraform init 
```

<pre>
terraform plan \
  -var "do_token=${DO_PAT}" \
  -var "pub_key=$HOME/.ssh/id_rsa.pub" \
  -var "pvt_key=$HOME/.ssh/id_rsa" \
  -var "ssh_fingerprint=bd:06:23:e2:89:9a:1d:cb:3e:54:7d:43:26:50:8e:76"
</pre> 

<pre>
terraform apply \
  -var "do_token=${DO_PAT}" \
  -var "pub_key=$HOME/.ssh/id_rsa.pub" \
  -var "pvt_key=$HOME/.ssh/id_rsa" \
  -var "ssh_fingerprint=bd:06:23:e2:89:9a:1d:cb:3e:54:7d:43:26:50:8e:76"
</pre> 

## Tips 
- To get the list of images that digital ocean providers:
<pre>
curl -X GET --silent "https://api.digitalocean.com/v2/images?per_page=999" -H "Authorization: Bearer $DO_PAT" | jq -r '.images[] | [.id, .slug, .name, .distribution] | @csv'
</pre>

- To get the ssh fingerprint:
<pre>
curl --silent -X GET "https://api.digitalocean.com/v2/account/keys" -H "Authorization: Bearer $DO_PAT" | jq
</pre>

