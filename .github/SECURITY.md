# Security Policy

## Supported Versions

We consider the security of our system crucial. Currently, we are providing security updates for the following version of our Dockerfile:

| Version | Supported          |
| ------- | ------------------ |
| 1.0.x   | :white_check_mark: |

## Reporting a Vulnerability

We encourage any users who discover a vulnerability to let us know so we can take steps to address it promptly. We request that you disclose it responsibly. Please send an email to <contact@tangent.berlin> with detailed information about the vulnerability.

Please refrain from public disclosure until we have had the opportunity to address the vulnerability.

When you report a vulnerability, we commit to:

- Acknowledge receipt of your vulnerability report promptly.
- Provide an estimated timeframe for the vulnerability's resolution.
- Inform you when the vulnerability has been addressed.

We are dedicated to staying abreast of the latest security developments. If you have questions regarding our service's security, please do not hesitate to contact us.

## Dependencies

Our Dockerfile makes use of several external dependencies:

- Ubuntu:jammy as the base image
- Python version 3.11
- Node.js version 18
- Other dependencies detailed in the Dockerfile

We make every effort to keep all of our dependencies up-to-date and apply necessary security patches.

However, we recommend that you review the security policies of these dependencies to ensure their safe use.

## Best Practices

We designed our Dockerfile with security in mind, adhering to best practices such as:

- Regularly updating all dependencies to their latest versions.
- Minimizing the number of layers in the Docker image.
- Performing clean-up after installation to reduce the Docker image size.
- Using verified sources for installing dependencies.

The code should operate within a trusted environment, and access to the Docker image should be limited to trusted individuals only.

## License

The Dockerfile's code is under the MIT license, which provides no warranty. Use it at your own risk and ensure you understand and comply with the license terms.
