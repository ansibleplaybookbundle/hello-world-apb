FROM ansibleplaybookbundle/apb-base:canary

LABEL "com.redhat.apb.spec"=\
"LS0tCnZlcnNpb246IDEuMC4wCm5hbWU6IGhlbGxvLXdvcmxkLWFwYgpkZXNjcmlwdGlvbjogZGVw\
bG95cyBoZWxsby13b3JsZCB3ZWIgYXBwbGljYXRpb24KYmluZGFibGU6ICJGYWxzZSIKYXN5bmM6\
IG9wdGlvbmFsCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiBIZWxsbyBXb3JsZCAoQVBCKQogIGxv\
bmdEZXNjcmlwdGlvbjoKICAgIEEgc2FtcGxlIEFQQiB3aGljaCBkZXBsb3lzIGEgY29udGFpbmVy\
aXplZCBIZWxsbyBXb3JsZCB3ZWIgYXBwbGljYXRpb24KICBkZXBlbmRlbmNpZXM6IFsnZG9ja2Vy\
LmlvL2Fuc2libGVwbGF5Ym9va2J1bmRsZS9oZWxsby13b3JsZDpsYXRlc3QnXQogIHByb3ZpZGVy\
RGlzcGxheU5hbWU6ICJSZWQgSGF0LCBJbmMuIgpwbGFuczoKICAtIG5hbWU6IGRlZmF1bHQKICAg\
IGRlc2NyaXB0aW9uOiBBIHNhbXBsZSBBUEIgd2hpY2ggZGVwbG95cyBIZWxsbyBXb3JsZAogICAg\
ZnJlZTogIlRydWUiCiAgICBtZXRhZGF0YToKICAgICAgZGlzcGxheU5hbWU6IERlZmF1bHQKICAg\
ICAgbG9uZ0Rlc2NyaXB0aW9uOgogICAgICAgIFRoaXMgcGxhbiBkZXBsb3lzIGEgUHl0aG9uIHdl\
YiBhcHBsaWNhdGlvbiBkaXNwbGF5aW5nIEhlbGxvIFdvcmxkCiAgICAgIGNvc3Q6ICQwLjAwCiAg\
ICBwYXJhbWV0ZXJzOiBbXQo="

ADD playbooks /opt/apb/actions

# Add our role into the ansible roles dir
ADD . /opt/ansible/roles/hello-world-apb

RUN chmod -R g=u /opt/{ansible,apb}

USER apb
