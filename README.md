# Aliyun CLI on Docker

This is a simple docker container that installed official [Aliyun CLI](https://github.com/aliyun/aliyun-cli). There is no entrypoint used, so you can make this container as a CI tool.

## Usage

Just run the container using the command directly.

```
docker run -it misbahulard/aliyun-cli aliyun oss ...
```

## Credential

You can pass the credential directly in the docker run command.

```
docker run -it misbahulard/aliyun-cli aliyun oss ls --access-key-id XXXXXXXX --access-key-secret XXXXXXXX --region REGION_ID
```

Or you can mount the config file to `/root/.aliyun/config.json`.

```
{
  "current": "default",
  "profiles": [
    {
      "name": "default",
      "mode": "AK",
      "access_key_id": "XXXXXXX",
      "access_key_secret": "XXXXXXX",
      "region_id": "REGION_ID",
      "output_format": "json",
      "language": "en"
    }
  ],
  "meta_path": ""
}
```