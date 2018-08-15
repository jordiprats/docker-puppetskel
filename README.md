# docker-puppetskel

## building puppetskel

```
$ docker build -t eyp/puppetskel .
```

## running puppetskel
```
jprats@croscat:~/git$ docker run -i -v /home/jprats/git:/vol -t eyp/puppetskel puppet module generate --skip-interview eyp-elasticsearch
Warning: Setting templatedir is deprecated. See http://links.puppetlabs.com/env-settings-deprecations
   (at /usr/lib/ruby/vendor_ruby/puppet/settings.rb:1139:in `issue_deprecation_warning')

Notice: Generating module at /vol/eyp-elasticsearch...
Notice: Populating templates...
Finished; module generated in eyp-elasticsearch.
eyp-elasticsearch/manifests
eyp-elasticsearch/manifests/config.pp
eyp-elasticsearch/manifests/install.pp
eyp-elasticsearch/manifests/service.pp
eyp-elasticsearch/manifests/params.pp
eyp-elasticsearch/manifests/init.pp
eyp-elasticsearch/Gemfile
eyp-elasticsearch/CHANGELOG.md
eyp-elasticsearch/tests
eyp-elasticsearch/tests/init.pp
eyp-elasticsearch/metadata.json
eyp-elasticsearch/Rakefile
eyp-elasticsearch/README.md
eyp-elasticsearch/spec
eyp-elasticsearch/spec/acceptance
eyp-elasticsearch/spec/acceptance/nodesets
eyp-elasticsearch/spec/acceptance/nodesets/ubuntu16-docker.yml
eyp-elasticsearch/spec/acceptance/nodesets/centos7-docker.yml
eyp-elasticsearch/spec/acceptance/nodesets/centos6-docker.yml
eyp-elasticsearch/spec/acceptance/nodesets/ubuntu14-docker.yml
eyp-elasticsearch/spec/acceptance/nodesets/centos5-docker.yml
eyp-elasticsearch/spec/acceptance/version.rb
eyp-elasticsearch/spec/acceptance/base_spec.rb
eyp-elasticsearch/spec/spec_helper_acceptance.rb
eyp-elasticsearch/spec/classes
eyp-elasticsearch/spec/classes/init_spec.rb
eyp-elasticsearch/spec/spec_helper.rb
jprats@croscat:~/git$ 
```
