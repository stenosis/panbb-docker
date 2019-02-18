# panBB Docker Template
This is a minimal docker image for [panBB](https://punbb.info/f-42.html). It is build from [Alpine Linux](https://alpinelinux.org/) for minimal size. No HTTP server is used, php is used to serve all content. This reduces the image size further, but the image does not support .htaccess files and other functionality. Most likely you want to run a reverse proxy with more functionality in front.


## How to use

Create volumes for data and configuration:

```
docker volume create panbb
```

Start your panBB:

```
docker run -d --name your-panbb -p 8080:80 -v panbb:/panbb 
```

Or just use the _docker compose_ configuration:

```
docker-compose up
```

Now you can access your panBB at [http://localhost:8080](http://localhost:8080)


## Dependencies
* [Docker](https://www.docker.com/)
* [PanBB](https://punbb.info/f-42.html)

## Licence
Copyright 2019, Tim F. Rieck

Licensed under the GLP, Version 3.0 (the "License"); you may not use this work except in compliance with the License. You may obtain a copy of the License in the LICENSE file, or at:

https://www.gnu.org/licenses/gpl-3.0.en.html

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.