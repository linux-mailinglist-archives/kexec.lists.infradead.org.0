Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0A6B126399
	for <lists+kexec@lfdr.de>; Thu, 19 Dec 2019 14:35:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GbOZza0F7164vbImxbl3QexIaYI3td0FIKscY4YeDAY=; b=tCARW74+fzprd2yxspYmGESNn
	Isrcm5RP1hgNR9W5ZqEDoFtG3thF/ksUsgEOhJ6Hh+FGRzVMp2HUR8sbFioc/9XKQqaR9DgAJh4EB
	rf2EWujrDc6YvWkPdlDWKdMKFNrR/ZZJgzLsFeLYNk095vfIz7v8yZKDShIkb84vjvmuEZT30aJn9
	PpdldEE3en3O+3zisHWRBr2VmRRgFtqqRFLCeC/1uWLriTvFHkcQ9gZP1Rwj+Gk0Laqs1mJYmvLZY
	MYKKR+K+dJqThCroMcplmLZoQXUDSgRepGuAvs0G/3qi4VVAQSD2NwA0ATFHilDeXe6bHTmVSp6nv
	2gStws3Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihvxO-0000jH-Hy; Thu, 19 Dec 2019 13:35:10 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihvxK-0007xE-2x
 for kexec@lists.infradead.org; Thu, 19 Dec 2019 13:35:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1576762501;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=0+S681QS50pNUqKuQmsJ/fj1dRXHVwBOLZkD1X7fNtM=;
 b=LRsjqUYTKungvMIvbJ78coXuuI7z6qD6tgqZh6CDN/Jk6+yIDppT6XurnsPSbv8EAp/Czg
 Q04bJHIZ12x034kqAv0VYqepE53GlNELHjryq90oUV3kVRtp0R9sLtauGuKSLFIPs4nuFf
 AtrUTwNCvXmFPykWnEcbDqed0sRwLJk=
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com
 [209.85.214.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-240-QVT4wBaKNeyFUcDlfa2YSw-1; Thu, 19 Dec 2019 08:34:58 -0500
Received: by mail-pl1-f197.google.com with SMTP id q12so3072512plr.13
 for <kexec@lists.infradead.org>; Thu, 19 Dec 2019 05:34:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=V5FFeg0HCzjZ1knvNBJM/edCsA5qX/526o+xsOW+DsQ=;
 b=FCIQlLA+K4cW3o1ZQFL4TSLrzLaJt4PqZBj0KutnY2ETIhL7jAjf4HL4ZXhkyREw49
 CY0OFDUA34TnvfHANqQlcegFTl14EzzOeACGpmqRT94fBK9VOhDLs2lUZAQwN3eACE12
 056Msb56qHBhYa+yPuSSQpql5gflO9Y/DCfS8j3SWXMbPYgsUYiPsR/9Y+zjjqc88lCJ
 SEH0KJmiVDP6nKUbC2e0QjBTw8A3T5qr2N1oArFJLMntis1DMxBi776XyEyzyUCm/r+m
 GINe999rdJnOXZIZAVaQ9wNpEWQK0dUa6/HC2e+r9X+9ZfeTyO57x8G+8WxPiD1WS5nn
 t5Nw==
X-Gm-Message-State: APjAAAVfR9LWJJPeDmm2xV88+3iyNoh5IF7Nz06yhKd6V+ZqRZyjARoF
 ZmvSrInrpltqOd3YQc6XnR8P4Q8Nllk2TvDVhcLoHDHpC+UdXW1kvEnqUpIj9MZytoXPp/+WTjr
 1mL4b80e1uKvZRHdE1BQ8
X-Received: by 2002:a17:90a:c385:: with SMTP id
 h5mr9569677pjt.122.1576762497296; 
 Thu, 19 Dec 2019 05:34:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqyuWfjNAOhL7PdUmC80BEYr7Cc0eL+KPVqPAUvJVW/Q0ugjf+Dkdyk31ms3/uUhizQDfp72fA==
X-Received: by 2002:a17:90a:c385:: with SMTP id
 h5mr9569650pjt.122.1576762496916; 
 Thu, 19 Dec 2019 05:34:56 -0800 (PST)
Received: from localhost.localdomain ([122.177.22.208])
 by smtp.gmail.com with ESMTPSA id b22sm5702869pft.110.2019.12.19.05.34.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 19 Dec 2019 05:34:55 -0800 (PST)
Subject: Re: [RFC] printing the final constructed kernel command line
To: Eric DeVolder <eric.devolder@oracle.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
References: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
 <4bb55b9c-1585-4d5a-2bd7-ec40b8fd0eed@redhat.com>
 <319db0e3-0e1b-bd5b-e751-8750bae1456d@oracle.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <a70d5b14-566e-2fbd-7b2c-3054ccb0bee9@redhat.com>
Date: Thu, 19 Dec 2019 19:04:51 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <319db0e3-0e1b-bd5b-e751-8750bae1456d@oracle.com>
Content-Language: en-US
X-MC-Unique: QVT4wBaKNeyFUcDlfa2YSw-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_053506_227704_095FF444 
X-CRM114-Status: GOOD (  24.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

SGkgRXJpYywKCk9uIDEyLzE5LzIwMTkgMTI6MzAgQU0sIEVyaWMgRGVWb2xkZXIgd3JvdGU6Cj4g
VGhhbmtzIEJodXBlc2ggZm9yIHRoZSBmZWVkYmFjaywgcmVzcG9uc2VzIGJlbG93IQo+IGVyaWMK
PiAKPiBPbiAxMi8xNy8xOSAxOjU5IFBNLCBCaHVwZXNoIFNoYXJtYSB3cm90ZToKPj4gSGkgRXJp
YywKPj4KPj4gT24gMTIvMTcvMjAxOSAwMjowMiBBTSwgRXJpYyBEZVZvbGRlciB3cm90ZToKPj4+
IFRoZSAtLWNvbW1hbmQtbGluZSwgLS1hcHBlbmQsIGFuZCAtLXJldXNlLWNtZGxpbmUgb3B0aW9u
cyB0byBrZXhlYyBjYW4KPj4+IGJlIHVzZWQgaW4gY29tYmluYXRpb24gdG8gY3JhZnQgYSBrZXJu
ZWwgY29tbWFuZCBsaW5lIGZvciBhIGtlcm5lbAo+Pj4gbG9hZGVkIHZpYSBrZXhlYy4gSW4gYWRk
aXRpb24sIHRoZSBrZXhlYyB0b29sIG1heSBhbHNvIG1hbmlwdWxhdGUKPj4+IGZ1cnRoZXIgdGhl
IGNvbW1hbmQgbGluZSwgZWcuICBlbGZjb3JlaGRyIGFkZGl0aW9uLgo+Pgo+PiBUaGFua3MgZm9y
IHByb3Bvc2luZyB0aGlzIGNoYW5nZS4gSSBoYXZlIHNvbWUgY29tbWVudHMvcXVlcmllcyAoc2Vl
IAo+PiBiZWxvdykuCj4+Cj4+PiBUbyBhaWQgaW4gZGVidWdnaW5nIGtkdW1wL2tleGVjIHJlbGF0
ZWQgaXNzdWVzLCBpdCB3b3VsZCBiZSBoZWxwZnVsCj4+PiBmb3Iga2V4ZWMgdG8gcHJpbnQgdGhl
IGZpbmFsIGNvbnN0cnVjdGVkIGtlcm5lbCBjb21tYW5kIGxpbmUgYXJndW1lbnQuCj4+Pgo+Pj4g
Rm9yIGV4YW1wbGUsIHRoZSBmb2xsb3dpbmcgc2ltcGxlIGNoYW5nZSAoZm9yIGkzODYveDg2XzY0
KToKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEva2V4ZWMvYXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5j
IAo+Pj4gYi9rZXhlYy9hcmNoL2kzODYveDg2LWxpbnV4LXNldHVwLmMKPj4+IGluZGV4IDA1N2Vl
MTQuLjZkYzRhZGMgMTAwNjQ0Cj4+PiAtLS0gYS9rZXhlYy9hcmNoL2kzODYveDg2LWxpbnV4LXNl
dHVwLmMKPj4+ICsrKyBiL2tleGVjL2FyY2gvaTM4Ni94ODYtbGludXgtc2V0dXAuYwo+Pj4gQEAg
LTU3LDYgKzU3LDggQEAgdm9pZCBzZXR1cF9saW51eF9ib290bG9hZGVyX3BhcmFtZXRlcnNfaGln
aCgKPj4+ICAgICAgIGNoYXIgKmNtZGxpbmVfcHRyOwo+Pj4gICAgICAgdW5zaWduZWQgbG9uZyBp
bml0cmRfYmFzZSwgaW5pdHJkX2FkZHJfbWF4Owo+Pj4KPj4+ICsgICAgcHJpbnRmKCJGaW5hbCBr
ZXJuZWwgY21kbGluZTogJyVzJ1xuIiwgY21kbGluZSk7Cj4+PiArCj4+Cj4+IElmIHdlIHdhbnQg
dG8gYWRkIHRoaXMgZm9yIGRlYnVnZ2luZyBwdXJwb3NlcywgaXRzIGJldHRlciB0byBoYXZlIAo+
PiBkYmdwcmludGYoKSBpbnN0ZWFkIG9mIHByaW50ZigpIGhlcmUuIFRoaXMgd2lsbCBtYWtlIHN1
cmUgdGhhdCB0aGUgCj4+IGRlYnVnIG1lc3NhZ2UgaXMgcHJpbnRlZCBvbmx5IHdoZW4gJy1kJyBm
bGFnIGlzIHNwZWNpZmllZCB3aGlsZSAKPj4gY2FsbGluZyBrZXhlYyB1dGlsaXR5IGZyb20gY29t
bWFuZC1saW5lLgo+IAo+IFllcyEgSSB1c2VkIHByaW50ZigpIG1lcmVseSB0byBwcm92aWRlIGFu
IGV4YW1wbGUgb2Ygd2hhdCBpcyBwb3NzaWJsZS4KCk9rLgoKPj4+ICAgICAgIC8qIFNheSBJJ20g
YSBib290IGxvYWRlciAqLwo+Pj4gICAgICAgcmVhbF9tb2RlLT5sb2FkZXJfdHlwZSA9IExPQURF
Ul9UWVBFX0tFWEVDIDw8IDQ7Cj4+Pgo+Pj4gcmVzdWx0cyBpbiB0aGUgZm9sbG93aW5nIG9uIGEg
c3lzdGVtZC1iYXNlZCBzeXN0ZW0gKGZvcm1hdHRlZCB0byBmaXQKPj4+IGluIDcwIGNoYXIgbGlu
ZXMpOgo+Pj4KPj4+ICUgc3lzdGVtY3RsIHN0YXR1cyAtbCBrZHVtcC5zZXJ2aWNlCj4+PiDil48g
a2R1bXAuc2VydmljZSAtIENyYXNoIHJlY292ZXJ5IGtlcm5lbCBhcm1pbmcKPj4+ICAgICBMb2Fk
ZWQ6IGxvYWRlZCAoL3Vzci9saWIvc3lzdGVtZC9zeXN0ZW0va2R1bXAuc2VydmljZTsgZW5hYmxl
ZDsKPj4+ICAgICAgdmVuZG9yIHByZXNldDogZW5hYmxlZCkKPj4+ICAgICBBY3RpdmU6IGFjdGl2
ZSAoZXhpdGVkKSBzaW5jZSBNb24gMjAxOS0xMi0xNiAxNDo1OToyMSBFU1Q7Cj4+PiAgICAgIDJt
aW4gNTNzIGFnbwo+Pj4gICAgUHJvY2VzczogMTQwNTggRXhlY1N0b3A9L3Vzci9iaW4va2R1bXBj
dGwgc3RvcCAoY29kZT1leGl0ZWQsCj4+PiAgICAgc3RhdHVzPTAvU1VDQ0VTUykKPj4+ICAgIFBy
b2Nlc3M6IDE0MDczIEV4ZWNTdGFydD0vdXNyL2Jpbi9rZHVtcGN0bCBzdGFydCAoY29kZT1leGl0
ZWQsCj4+PiAgICAgc3RhdHVzPTAvU1VDQ0VTUykKPj4+ICAgTWFpbiBQSUQ6IDE0MDczIChjb2Rl
PWV4aXRlZCwgc3RhdHVzPTAvU1VDQ0VTUykKPj4+Cj4+PiBEZWMgMTYgMTQ6NTk6MTggdm0zNjQg
a2R1bXBjdGxbMTQwNThdOiBTdG9wcGluZyBrZHVtcDogW09LXQo+Pj4gRGVjIDE2IDE0OjU5OjE4
IHZtMzY0IHN5c3RlbWRbMV06IFN0b3BwZWQgQ3Jhc2ggcmVjb3Zlcnkga2VybmVsIGFybWluZy4K
Pj4+IERlYyAxNiAxNDo1OToxOCB2bTM2NCBzeXN0ZW1kWzFdOiBTdGFydGluZyBDcmFzaCByZWNv
dmVyeSBrZXJuZWwgCj4+PiBhcm1pbmcuLi4KPj4+IERlYyAxNiAxNDo1OToyMSB2bTM2NCBrZHVt
cGN0bFsxNDA3M106IEZpbmFsIGtlcm5lbCBjbWRsaW5lOiAKPj4+ICdCT09UX0lNQUdFPQo+Pj4g
ICAvdm1saW51ei00LjE0LjM1LTE5MDIuNy4zLjEuZWw3dWVrLng4Nl82NCBybyByaGdiIHF1aWV0
IAo+Pj4gTEFORz1lbl9VUy5VVEYtOAo+Pj4gICBpcnFwb2xsIG5yX2NwdXM9MSByZXNldF9kZXZp
Y2VzIGNncm91cF9kaXNhYmxlPW1lbW9yeSBtY2U9b2ZmIG51bWE9b2ZmCj4+PiAgIHVkZXYuY2hp
bGRyZW4tbWF4PTIgcGFuaWM9MTAgcm9vdGZsYWdzPW5vZmFpbCBhY3BpX25vX21lbWhvdHBsdWcK
Pj4+ICAgdHJhbnNwYXJlbnRfaHVnZXBhZ2U9bmV2ZXIgbm9rYXNsciBub3ZtY29yZWRkIGRpc2Fi
bGVfY3B1X2FwaWNpZD0wCj4+PiAgIGVsZmNvcmVoZHI9OTAxNDkySycKPj4+IERlYyAxNiAxNDo1
OToyMSB2bTM2NCBzeXN0ZW1kWzFdOiBTdGFydGVkIENyYXNoIHJlY292ZXJ5IGtlcm5lbCBhcm1p
bmcuCj4+PiBEZWMgMTYgMTQ6NTk6MjEgdm0zNjQga2R1bXBjdGxbMTQwNzNdOiBrZXhlYzogbG9h
ZGVkIGtkdW1wIGtlcm5lbAo+Pj4gRGVjIDE2IDE0OjU5OjIxIHZtMzY0IGtkdW1wY3RsWzE0MDcz
XTogU3RhcnRpbmcga2R1bXA6IFtPS10KPj4+Cj4+PiBhbmQgdGhlIG91dHB1dCBpcyBhbHNvIGF2
YWlsYWJsZSBpbiAvdmFyL2xvZy9tZXNzYWdlcy4KPj4KPj4gU2luY2Uga2R1bXBjdGwgaXMgYSBk
aXN0cmlidXRpb24gc3BlY2lmaWMgc2NyaXB0IChVc2VkIGJ5IAo+PiBGZWRvcmEvUkhFTCksIHdo
aWNoIGludm9rZXMgJ2tleGVjJyB1bmRlciB0aGUgaG9vZCwgd2UgY2FuIGRpc2N1c3MgdGhlIAo+
PiBmZWF0dXJlcyBzdXBwb3J0ZWQgYnkgJ2tleGVjJyByYXRoZXIgdGhhbiB0aGUgZGlzdHJpYnV0
aW9uIHNwZWNpZmljIAo+PiBzY3JpcHRzIChkaXNjdXNzaW9uIHJlZ2FyZGluZyB3aGljaCBhcmUg
cHJvYmFibHkgbW9yZSBzdWl0ZWQgdG8gdGhlIAo+PiBGZWRvcmEga2V4ZWMgbGlzdDoga2V4ZWNA
bGlzdHMuZmVkb3JhcHJvamVjdC5vcmcpCj4gCj4gQWdyZWVkLCB0aGlzIFJGQyBpcyBmb3IgYSBj
aGFuZ2UgdG8ga2V4ZWMsIG5vdGluZyB0aGF0IHdyYXBwZXIgc2NyaXB0cyAKPiBzdWNoIGFzIGtk
dW1wY3RsIGFyZSBpbnN1ZmZpY2llbnQgdG8gcHJvdmlkZSB0aGUgZnVuY3Rpb25hbGl0eSByZXF1
ZXN0ZWQuCj4gCj4+Cj4+PiBUaGVyZSBtaWdodCBhbHNvIGJlIGFuIG9wcG9ydHVuaXR5IHRvIGNv
bnNvbGlkYXRlIGhhbmRsaW5nIG9mIHRoZQo+Pj4ga2VybmVsIGNvbW1hbmQgbGluZSwgYXMgbW9z
dCBhcmNoIHRhcmdldHMgaGF2ZSB0aGUgLS1jb21tYW5kLWxpbmUsCj4+PiAtLWFwcGVuZCwgYW5k
IC0tcmV1c2UtY21kbGluZSBvcHRpb25zLCB0aG91Z2ggZWFjaCBhcmNoIGluZGVwZW5kZW50bHkK
Pj4+IGNvZGVzIHRoZSBzdXBwb3J0IGZvciB0aGVzZSBvcHRpb25zLgo+Pgo+PiBUaGlzIHNlZW1z
IGxpa2UgYSBnb29kIGlkZWEsIG1vcmUgb24gdGhlIHNhbWUgYmVsb3cgLi4uCj4+Cj4+PiBOb3Rl
OiBTaW1wbHkgcHJpbnRpbmcgdGhlIGNtZGxpbmUgaW4gc2NyaXB0cyBzdWNoIGFzIGtkdW1wY3Rs
IG1heSBub3QKPj4+IHJlc3VsdCBpbiB0aGUgc2FtZSBvcmRlcmluZywgYW5kIHdpbGwgb21pdCBh
bnkgYWRkaXRpb24gbWFkZSBpbnRlcm5hbGx5Cj4+PiBieSBrZXhlYywgc3VjaCBhcyB0aGUgZWxm
Y29yZWhkci4KPj4+Cj4+PiBJIHByb3Bvc2UgdGhlIGFkZGl0aW9uIG9mIGFuIG9wdGlvbiB0byBr
ZXhlYywgLS1wcmludC1rY2wgKHRvIG1pcnJvcgo+Pj4gLS1wcmludC1ja3IpLCB0aGF0IHdvdWxk
IGNvbnRyb2wgc3VjaCBwcmludGluZywgYXMgd2VsbCBhcyB0aGUgbmVlZGVkCj4+PiBwZXIgYXJj
aCBjb25kaXRpb25hbCBwcmludCBzdGF0ZW1lbnRzIHNpbWlsYXIgdG8gdGhlIGFib3ZlIHRvIHBy
aW50IHRoZQo+Pj4gZmluYWwgY29uc3RydWN0ZWQga2VybmVsIGNvbW1hbmQgbGluZS4KPj4KPj4g
Li4uIEkgYW0gbm90IHN1cmUgSSB1bmRlcnN0YW5kIHRoZSBhYm92ZSBwb2ludC4gTG9va2luZyBh
dCB0aGUgbGF0ZXN0IAo+PiBrZXhlYy10b29scyBtYW4gcGFnZSAoc2VlOiAKPj4gZ2l0Oi8vZ2l0
Lmtlcm5lbC5vcmcvcHViL3NjbS91dGlscy9rZXJuZWwva2V4ZWMva2V4ZWMtdG9vbHMuZ2l0KSwg
SSAKPj4gY291bGRuJ3QgZmluZCAnLS1wcmludC1ja3InIG9wdGlvbjoKPj4KPj4gLS1wcmludC1j
a3Itc2l6ZTogUHJpbnQgY3Jhc2gga2VybmVsIHJlZ2lvbiBzaXplLCBpZiBhdmFpbGFibGUuCj4+
Cj4+IENhbiB5b3UgcGxlYXNlIGVsYWJvcmF0ZSBvbiAnLS1wcmludC1ja3InIGFuZCAnLS1wcmlu
dC1rY2wnIG9wdGlvbnMgbW9yZS4KPiAKPiBZb3UgcHJvcG9zZWQgdXNpbmcgZGJncHJpbnRmKCkg
aW4gY29uanVuY3Rpb24gd2l0aCB0aGUgLWQgb3B0aW9uOyBhbmQgCj4gdGhhdCBtYWtlcyBncmVh
dCBzZW5zZTsgSSBoYWQgbm90IGluIG15IGVhZ2VybmVzcyB0byBwcm9kdWNlIHRoaXMgUkZDLgoK
T2ssIG5vIHByb2JsZW0uCgo+IEluc3RlYWQsIEkgcHJvcG9zZWQgYW5vdGhlciBvcHRpb24gLS1w
cmludC1rY2wgKGZvciBwcmludCBrZXJuZWwgY29tbWFuZCAKPiBsaW5lKSB0byBjb25kaXRpb25h
bGx5IHByaW50IHRoZSBpbmZvcm1hdGlvbi4gSSB3YXMgdXNpbmcgLS1wcmludC1ja3IgYXMgCj4g
YW4gZXhhbXBsZSBvZiBzaW1pbGFyIG9wdGlvbiB1c2VkIHRvIHByaW50IGluZm9ybWF0aW9uIChp
biB0aGlzIGNhc2UsIAo+IHRoZSBjcmFzaCBrZXJuZWwgcmVnaW9uKS4gT3RoZXIgdGhhbiBhIHNp
bWlsYXIgbmFtaW5nIGNvbnZlbnRpb24sIHRoZXJlIAo+IGlzIG5vIGNvcnJlbGF0aW9uIGJldHdl
ZW4gLS1wcmludC1ja3IgYW5kIC0tcHJpbnQta2NsLCBhbmQgaW5kZWVkIGV2ZW4gCj4gLS1wcmlu
dC1rY2wgbWlnaHQgYmUgdW4tbmVjZXNzYXJ5IGdpdmVuIGRiZ3ByaW50ZigpLgoKU3VyZSwgbWFr
ZXMgc2Vuc2UuCkkgdGhpbmsgeW91IGNhbiBnbyBhaGVhZCBhbmQgcG9zdCBhIGZvcm1hbCBwYXRj
aCB3aXRoICdkYmdwcmludGYoKScgCmJlaW5nIHVzZWQuIE9yIGlmIHlvdSB3YW50LCBJIGNhbiB0
cnkgYW5kIHByb3Bvc2UgYSBzaW1pbGFyIHBhdGNoIGZvciAKdXBzdHJlYW0ga2V4ZWMtdG9vbHMu
CgpQbGVhc2UgbGV0IG1lIGtub3cuCgpUaGFua3MsCkJodXBlc2gKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2tleGVjCg==
