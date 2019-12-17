Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAF812361E
	for <lists+kexec@lfdr.de>; Tue, 17 Dec 2019 20:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4h3AEELbaR99gbujbwQKIYfByXUBrVV+QBbrApNuZJE=; b=ZpHMp0ViOeyD707Wfev9Sut7b
	+qpGzRU5vqAO8D64mBUj5NDBKfffMLoS2Us9EMhgbH+jZ0Nq0g42pyKHfF7AANmBsm1XZJIf7K0Gk
	KU6R+LxsAg8/jKcZkNmqgPM4gAKti0jXtYZxIlSl1Y/vDnji9FiA3d9F7bxrl0LV/s3RYXpImstQ/
	VXnKOnmyw76R0ooziQ/JiNsb6g5Y/LImkzynN8KZna1PgzK2F+NQpxVQqNVMFScqjGwTKnmxFg7Cz
	9jXd1LsNRUIEhtSCV05DFgDTY3SrMu7AT7s3dOX2CKT0pret4dlxFYU280eTD5mE64u9mvJ8DOq7r
	b46TuJRww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihJ07-00063h-4Q; Tue, 17 Dec 2019 19:59:23 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihJ03-00063L-4X
 for kexec@lists.infradead.org; Tue, 17 Dec 2019 19:59:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576612756;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=O+lA/DBn/GZmm+Zr2WHI8Y/9u0WQsLXsHLRqRpZ1rjw=;
 b=cqh1Idon6JhHSdz1H4lQ2tx9sXGSwKaqYMHNRIKY44tHPeu/LFz0HbnC2bZM4u8vE1jS3a
 rMDQayaA5sgGz/tc/QbZurgXB+fXnZXwBb3yHnUsarB80ZmsZQ9CAkWFkoy/8rlPuqY7wi
 CfBrwaq65nDQlvKrAHKIQvQwLRV7sLA=
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com
 [209.85.216.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-3-Reqtuj96Nm2DeTJbv87Ymg-1; Tue, 17 Dec 2019 14:59:14 -0500
Received: by mail-pj1-f69.google.com with SMTP id k93so420136pjh.5
 for <kexec@lists.infradead.org>; Tue, 17 Dec 2019 11:59:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:cc:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oiG+F8Myz2Ae0IgNXFM2GPfO596DXrEGqpkaCDSzgAM=;
 b=eDrw+Oa2QsLyepqRFR3vbGp15xQ7AqCkLkGv+qZIKZr6LJ8JGi6v31GOWIPA3pTMcl
 vO7hojPEHzR1ieWcANZI8pVHjOgPgXW5Pr7d1nkOT5z8ZJWdt2zTQmGPK+AO1sDVCHHW
 iA90b7a2jgUhczFLbA1JX+YtaReGQkR8rtdmio+bDEoR/PlXtb26CG9ixoArbEq3yxRZ
 ulAMQh0PuNEO4j7+2vZCTe2fahI315MFqIZ8f7rO7RGOavNm7L+Do2yu3aV6ttuySU6o
 0jsFT58+A765RcifPhmRLoIDjtXu1YkdwCq27UJoqYB4wgE6DARK3Rlfqs9bPF5/+DHL
 aL/w==
X-Gm-Message-State: APjAAAXMKYlFhJDm6IcH8akAeLCwcLb9xqxUiaBzQyI5XN3MKBEztk3l
 w1ux9wJexBTyAD8/S8yJs3OhVs+G5xNC9vh9wWFv3/WQ2bjOsF2aSaQdYSAWaWSsdTXYrT1Txq+
 RyNEGueit2oy5cmpCN9xt
X-Received: by 2002:a17:902:be07:: with SMTP id
 r7mr24156192pls.183.1576612753150; 
 Tue, 17 Dec 2019 11:59:13 -0800 (PST)
X-Google-Smtp-Source: APXvYqwvnAKfrAPpvXSOSYAxuO7w4uA/G9Kv4Lyafq138V8lFq0kBQ94YaJYWuujuo216dUcPs5pMA==
X-Received: by 2002:a17:902:be07:: with SMTP id
 r7mr24156159pls.183.1576612752744; 
 Tue, 17 Dec 2019 11:59:12 -0800 (PST)
Received: from localhost.localdomain ([122.177.90.254])
 by smtp.gmail.com with ESMTPSA id d23sm27413464pfo.176.2019.12.17.11.59.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Dec 2019 11:59:11 -0800 (PST)
Subject: Re: [RFC] printing the final constructed kernel command line
To: Eric DeVolder <eric.devolder@oracle.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
References: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <4bb55b9c-1585-4d5a-2bd7-ec40b8fd0eed@redhat.com>
Date: Wed, 18 Dec 2019 01:29:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
Content-Language: en-US
X-MC-Unique: Reqtuj96Nm2DeTJbv87Ymg-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_115919_265732_550BB60E 
X-CRM114-Status: GOOD (  24.09  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Cc: "bhupesh.linux >> Bhupesh SHARMA" <bhupesh.linux@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgRXJpYywKCk9uIDEyLzE3LzIwMTkgMDI6MDIgQU0sIEVyaWMgRGVWb2xkZXIgd3JvdGU6Cj4g
VGhlIC0tY29tbWFuZC1saW5lLCAtLWFwcGVuZCwgYW5kIC0tcmV1c2UtY21kbGluZSBvcHRpb25z
IHRvIGtleGVjIGNhbgo+IGJlIHVzZWQgaW4gY29tYmluYXRpb24gdG8gY3JhZnQgYSBrZXJuZWwg
Y29tbWFuZCBsaW5lIGZvciBhIGtlcm5lbAo+IGxvYWRlZCB2aWEga2V4ZWMuIEluIGFkZGl0aW9u
LCB0aGUga2V4ZWMgdG9vbCBtYXkgYWxzbyBtYW5pcHVsYXRlCj4gZnVydGhlciB0aGUgY29tbWFu
ZCBsaW5lLCBlZy4gIGVsZmNvcmVoZHIgYWRkaXRpb24uCgpUaGFua3MgZm9yIHByb3Bvc2luZyB0
aGlzIGNoYW5nZS4gSSBoYXZlIHNvbWUgY29tbWVudHMvcXVlcmllcyAoc2VlIGJlbG93KS4KCj4g
VG8gYWlkIGluIGRlYnVnZ2luZyBrZHVtcC9rZXhlYyByZWxhdGVkIGlzc3VlcywgaXQgd291bGQg
YmUgaGVscGZ1bAo+IGZvciBrZXhlYyB0byBwcmludCB0aGUgZmluYWwgY29uc3RydWN0ZWQga2Vy
bmVsIGNvbW1hbmQgbGluZSBhcmd1bWVudC4KPiAKPiBGb3IgZXhhbXBsZSwgdGhlIGZvbGxvd2lu
ZyBzaW1wbGUgY2hhbmdlIChmb3IgaTM4Ni94ODZfNjQpOgo+IAo+IGRpZmYgLS1naXQgYS9rZXhl
Yy9hcmNoL2kzODYveDg2LWxpbnV4LXNldHVwLmMgCj4gYi9rZXhlYy9hcmNoL2kzODYveDg2LWxp
bnV4LXNldHVwLmMKPiBpbmRleCAwNTdlZTE0Li42ZGM0YWRjIDEwMDY0NAo+IC0tLSBhL2tleGVj
L2FyY2gvaTM4Ni94ODYtbGludXgtc2V0dXAuYwo+ICsrKyBiL2tleGVjL2FyY2gvaTM4Ni94ODYt
bGludXgtc2V0dXAuYwo+IEBAIC01Nyw2ICs1Nyw4IEBAIHZvaWQgc2V0dXBfbGludXhfYm9vdGxv
YWRlcl9wYXJhbWV0ZXJzX2hpZ2goCj4gICAgICAgY2hhciAqY21kbGluZV9wdHI7Cj4gICAgICAg
dW5zaWduZWQgbG9uZyBpbml0cmRfYmFzZSwgaW5pdHJkX2FkZHJfbWF4Owo+IAo+ICsgICAgcHJp
bnRmKCJGaW5hbCBrZXJuZWwgY21kbGluZTogJyVzJ1xuIiwgY21kbGluZSk7Cj4gKwoKSWYgd2Ug
d2FudCB0byBhZGQgdGhpcyBmb3IgZGVidWdnaW5nIHB1cnBvc2VzLCBpdHMgYmV0dGVyIHRvIGhh
dmUgCmRiZ3ByaW50ZigpIGluc3RlYWQgb2YgcHJpbnRmKCkgaGVyZS4gVGhpcyB3aWxsIG1ha2Ug
c3VyZSB0aGF0IHRoZSBkZWJ1ZyAKbWVzc2FnZSBpcyBwcmludGVkIG9ubHkgd2hlbiAnLWQnIGZs
YWcgaXMgc3BlY2lmaWVkIHdoaWxlIGNhbGxpbmcga2V4ZWMgCnV0aWxpdHkgZnJvbSBjb21tYW5k
LWxpbmUuCgo+ICAgICAgIC8qIFNheSBJJ20gYSBib290IGxvYWRlciAqLwo+ICAgICAgIHJlYWxf
bW9kZS0+bG9hZGVyX3R5cGUgPSBMT0FERVJfVFlQRV9LRVhFQyA8PCA0Owo+IAo+IHJlc3VsdHMg
aW4gdGhlIGZvbGxvd2luZyBvbiBhIHN5c3RlbWQtYmFzZWQgc3lzdGVtIChmb3JtYXR0ZWQgdG8g
Zml0Cj4gaW4gNzAgY2hhciBsaW5lcyk6Cj4gCj4gJSBzeXN0ZW1jdGwgc3RhdHVzIC1sIGtkdW1w
LnNlcnZpY2UKPiDil48ga2R1bXAuc2VydmljZSAtIENyYXNoIHJlY292ZXJ5IGtlcm5lbCBhcm1p
bmcKPiAgICAgTG9hZGVkOiBsb2FkZWQgKC91c3IvbGliL3N5c3RlbWQvc3lzdGVtL2tkdW1wLnNl
cnZpY2U7IGVuYWJsZWQ7Cj4gICAgICB2ZW5kb3IgcHJlc2V0OiBlbmFibGVkKQo+ICAgICBBY3Rp
dmU6IGFjdGl2ZSAoZXhpdGVkKSBzaW5jZSBNb24gMjAxOS0xMi0xNiAxNDo1OToyMSBFU1Q7Cj4g
ICAgICAybWluIDUzcyBhZ28KPiAgICBQcm9jZXNzOiAxNDA1OCBFeGVjU3RvcD0vdXNyL2Jpbi9r
ZHVtcGN0bCBzdG9wIChjb2RlPWV4aXRlZCwKPiAgICAgc3RhdHVzPTAvU1VDQ0VTUykKPiAgICBQ
cm9jZXNzOiAxNDA3MyBFeGVjU3RhcnQ9L3Vzci9iaW4va2R1bXBjdGwgc3RhcnQgKGNvZGU9ZXhp
dGVkLAo+ICAgICBzdGF0dXM9MC9TVUNDRVNTKQo+ICAgTWFpbiBQSUQ6IDE0MDczIChjb2RlPWV4
aXRlZCwgc3RhdHVzPTAvU1VDQ0VTUykKPiAKPiBEZWMgMTYgMTQ6NTk6MTggdm0zNjQga2R1bXBj
dGxbMTQwNThdOiBTdG9wcGluZyBrZHVtcDogW09LXQo+IERlYyAxNiAxNDo1OToxOCB2bTM2NCBz
eXN0ZW1kWzFdOiBTdG9wcGVkIENyYXNoIHJlY292ZXJ5IGtlcm5lbCBhcm1pbmcuCj4gRGVjIDE2
IDE0OjU5OjE4IHZtMzY0IHN5c3RlbWRbMV06IFN0YXJ0aW5nIENyYXNoIHJlY292ZXJ5IGtlcm5l
bCBhcm1pbmcuLi4KPiBEZWMgMTYgMTQ6NTk6MjEgdm0zNjQga2R1bXBjdGxbMTQwNzNdOiBGaW5h
bCBrZXJuZWwgY21kbGluZTogJ0JPT1RfSU1BR0U9Cj4gICAvdm1saW51ei00LjE0LjM1LTE5MDIu
Ny4zLjEuZWw3dWVrLng4Nl82NCBybyByaGdiIHF1aWV0IExBTkc9ZW5fVVMuVVRGLTgKPiAgIGly
cXBvbGwgbnJfY3B1cz0xIHJlc2V0X2RldmljZXMgY2dyb3VwX2Rpc2FibGU9bWVtb3J5IG1jZT1v
ZmYgbnVtYT1vZmYKPiAgIHVkZXYuY2hpbGRyZW4tbWF4PTIgcGFuaWM9MTAgcm9vdGZsYWdzPW5v
ZmFpbCBhY3BpX25vX21lbWhvdHBsdWcKPiAgIHRyYW5zcGFyZW50X2h1Z2VwYWdlPW5ldmVyIG5v
a2FzbHIgbm92bWNvcmVkZCBkaXNhYmxlX2NwdV9hcGljaWQ9MAo+ICAgZWxmY29yZWhkcj05MDE0
OTJLJwo+IERlYyAxNiAxNDo1OToyMSB2bTM2NCBzeXN0ZW1kWzFdOiBTdGFydGVkIENyYXNoIHJl
Y292ZXJ5IGtlcm5lbCBhcm1pbmcuCj4gRGVjIDE2IDE0OjU5OjIxIHZtMzY0IGtkdW1wY3RsWzE0
MDczXToga2V4ZWM6IGxvYWRlZCBrZHVtcCBrZXJuZWwKPiBEZWMgMTYgMTQ6NTk6MjEgdm0zNjQg
a2R1bXBjdGxbMTQwNzNdOiBTdGFydGluZyBrZHVtcDogW09LXQo+IAo+IGFuZCB0aGUgb3V0cHV0
IGlzIGFsc28gYXZhaWxhYmxlIGluIC92YXIvbG9nL21lc3NhZ2VzLgoKU2luY2Uga2R1bXBjdGwg
aXMgYSBkaXN0cmlidXRpb24gc3BlY2lmaWMgc2NyaXB0IChVc2VkIGJ5IEZlZG9yYS9SSEVMKSwg
CndoaWNoIGludm9rZXMgJ2tleGVjJyB1bmRlciB0aGUgaG9vZCwgd2UgY2FuIGRpc2N1c3MgdGhl
IGZlYXR1cmVzIApzdXBwb3J0ZWQgYnkgJ2tleGVjJyByYXRoZXIgdGhhbiB0aGUgZGlzdHJpYnV0
aW9uIHNwZWNpZmljIHNjcmlwdHMgCihkaXNjdXNzaW9uIHJlZ2FyZGluZyB3aGljaCBhcmUgcHJv
YmFibHkgbW9yZSBzdWl0ZWQgdG8gdGhlIEZlZG9yYSBrZXhlYyAKbGlzdDoga2V4ZWNAbGlzdHMu
ZmVkb3JhcHJvamVjdC5vcmcpCgo+IFRoZXJlIG1pZ2h0IGFsc28gYmUgYW4gb3Bwb3J0dW5pdHkg
dG8gY29uc29saWRhdGUgaGFuZGxpbmcgb2YgdGhlCj4ga2VybmVsIGNvbW1hbmQgbGluZSwgYXMg
bW9zdCBhcmNoIHRhcmdldHMgaGF2ZSB0aGUgLS1jb21tYW5kLWxpbmUsCj4gLS1hcHBlbmQsIGFu
ZCAtLXJldXNlLWNtZGxpbmUgb3B0aW9ucywgdGhvdWdoIGVhY2ggYXJjaCBpbmRlcGVuZGVudGx5
Cj4gY29kZXMgdGhlIHN1cHBvcnQgZm9yIHRoZXNlIG9wdGlvbnMuCgpUaGlzIHNlZW1zIGxpa2Ug
YSBnb29kIGlkZWEsIG1vcmUgb24gdGhlIHNhbWUgYmVsb3cgLi4uCgo+IE5vdGU6IFNpbXBseSBw
cmludGluZyB0aGUgY21kbGluZSBpbiBzY3JpcHRzIHN1Y2ggYXMga2R1bXBjdGwgbWF5IG5vdAo+
IHJlc3VsdCBpbiB0aGUgc2FtZSBvcmRlcmluZywgYW5kIHdpbGwgb21pdCBhbnkgYWRkaXRpb24g
bWFkZSBpbnRlcm5hbGx5Cj4gYnkga2V4ZWMsIHN1Y2ggYXMgdGhlIGVsZmNvcmVoZHIuCj4gCj4g
SSBwcm9wb3NlIHRoZSBhZGRpdGlvbiBvZiBhbiBvcHRpb24gdG8ga2V4ZWMsIC0tcHJpbnQta2Ns
ICh0byBtaXJyb3IKPiAtLXByaW50LWNrciksIHRoYXQgd291bGQgY29udHJvbCBzdWNoIHByaW50
aW5nLCBhcyB3ZWxsIGFzIHRoZSBuZWVkZWQKPiBwZXIgYXJjaCBjb25kaXRpb25hbCBwcmludCBz
dGF0ZW1lbnRzIHNpbWlsYXIgdG8gdGhlIGFib3ZlIHRvIHByaW50IHRoZQo+IGZpbmFsIGNvbnN0
cnVjdGVkIGtlcm5lbCBjb21tYW5kIGxpbmUuCgouLi4gSSBhbSBub3Qgc3VyZSBJIHVuZGVyc3Rh
bmQgdGhlIGFib3ZlIHBvaW50LiBMb29raW5nIGF0IHRoZSBsYXRlc3QgCmtleGVjLXRvb2xzIG1h
biBwYWdlIChzZWU6IApnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL3V0aWxzL2tlcm5lbC9r
ZXhlYy9rZXhlYy10b29scy5naXQpLCBJIApjb3VsZG4ndCBmaW5kICctLXByaW50LWNrcicgb3B0
aW9uOgoKLS1wcmludC1ja3Itc2l6ZTogUHJpbnQgY3Jhc2gga2VybmVsIHJlZ2lvbiBzaXplLCBp
ZiBhdmFpbGFibGUuCgpDYW4geW91IHBsZWFzZSBlbGFib3JhdGUgb24gJy0tcHJpbnQtY2tyJyBh
bmQgJy0tcHJpbnQta2NsJyBvcHRpb25zIG1vcmUuCgpUaGFua3MsCkJodXBlc2gKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxp
c3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
