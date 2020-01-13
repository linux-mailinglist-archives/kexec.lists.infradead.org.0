Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1E02139221
	for <lists+kexec@lfdr.de>; Mon, 13 Jan 2020 14:26:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zsCQZtoUUFsWk5z1uk517sKlImrFl1d1GOd7rEdRyFg=; b=nX+w15MVLaauG0D4jme3TsLcn
	1hrLh+G45VmmvasbadTc5GMSpzYTOL5ytgwirTo/G+vMJ7ArFX8kSQAefMB8lF6+3dJGPcPd3GW/Z
	4A33iXJgS/eIwzRiAvaj3Rw2aL1LTQwKa9NR1DTtgLUwew5V5MSfaCkHy25dDYQXSaxqhv4pE+/Nc
	Nnqrwuu1os3O6oAM+VZKRc9wV8M3/aP0t4y2TBlUfCKejxDBDBostfuy6TPRnpTUhYr0kstNoPG1A
	DXGS4hp/jzjbN4oIG1ViUhzu2KMgEm4vgRh6qbMc9ix/9zrl5IHmkEf+dVNCeYP0OFkK1iGdXFcLt
	Gngmx5+mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqzjK-00064M-2u; Mon, 13 Jan 2020 13:26:06 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqzjF-000638-QO
 for kexec@lists.infradead.org; Mon, 13 Jan 2020 13:26:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578921958;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=f9kMUJQ83VV62XsA8OSM5gQ39zUZTSvxvkoBnG1jH8s=;
 b=D5WJUEeFh5ied/4/5NIBX6pJ14vWrTy0fhJE9tn4KuPfN3UT3CYwpIlYzSBZjFpDECGMtQ
 x9puD9wmgXVZTa8NSG4pnmdzQg3Tj6jxPRI8kJQPr/5IbxmFQRXkX7MO0aF4fKMdYqdg7z
 LjN93F6+Av3srSpYcpkSZEkESIlt+iw=
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com
 [209.85.215.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-41-GOUzdamaON6u4_ZrbUW72g-1; Mon, 13 Jan 2020 08:25:56 -0500
Received: by mail-pg1-f198.google.com with SMTP id y15so6387431pgk.20
 for <kexec@lists.infradead.org>; Mon, 13 Jan 2020 05:25:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=/nvmtdLSILnQQPHfoyvzzRRM4aS+oVZGrQ6Es8IyaY8=;
 b=sXCNq9mBHKjDM6QyAy9quOc/LR8KbUMuuGF1k4iaFUdkv/mkzqZ2DjAAahepG4I5Gf
 89WrKwIGUOPyPnQCIhQyeQ5wFieIqToM2spJy+YQOMsWoQQRa7ogyBSVOWRvteuI22Jg
 0ObzO7OhVHVFG614xRsNFRfplDoFuVnNb/KLbUvMaroR5BVWWOtmNoep1ZZSwMZLQGpn
 RphPvwBEw3xWNEakQ5IeJ9ZtpCX17e9XGG9o57alLSsg8g/OknYTNBdaFxof11HA3vHe
 xfvhHmgf0xBas9Rmh2/dGhvNYUX6KuWNrr+D4izvK6yiB724mgR7jBNkaVLoWcazMURC
 nCvQ==
X-Gm-Message-State: APjAAAUUAfYBXWwIjjJluQ9nZ8vDOTXm+5KnxkPAHFZ1+gMu7LebBjQw
 93Q9Mpdn7AS5P4ufcZZ0wc6sBfie4KgMJVUbD/az5xGn0YqHFaS8Pf+92FuUWA87nQsZvHFVwOq
 jbGMd5ph4KSqBtP8ZHmlE
X-Received: by 2002:a63:1b49:: with SMTP id b9mr20565315pgm.258.1578921955643; 
 Mon, 13 Jan 2020 05:25:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqwfJSy6QbWFhpwVfwhC7c7HaV48N2RHbi22fsb33B8R9tkdQuGHOL45PD5t0zMltawo4NJKVQ==
X-Received: by 2002:a63:1b49:: with SMTP id b9mr20565290pgm.258.1578921955248; 
 Mon, 13 Jan 2020 05:25:55 -0800 (PST)
Received: from localhost.localdomain ([122.177.255.46])
 by smtp.gmail.com with ESMTPSA id y7sm14881192pfb.139.2020.01.13.05.25.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Jan 2020 05:25:54 -0800 (PST)
Subject: Re: [RFC] printing the final constructed kernel command line
To: Eric DeVolder <eric.devolder@oracle.com>
References: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
 <4bb55b9c-1585-4d5a-2bd7-ec40b8fd0eed@redhat.com>
 <319db0e3-0e1b-bd5b-e751-8750bae1456d@oracle.com>
 <a70d5b14-566e-2fbd-7b2c-3054ccb0bee9@redhat.com>
 <27ef47f0-6e68-df67-d701-9a73cdc79728@oracle.com>
 <CACi5LpO8udqw2ps77LUW-y4zLdbsdq84SGo85WC7m-kNjyEX+g@mail.gmail.com>
 <14f1ecbb-e746-83ce-1e72-3b87dcda75fc@oracle.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Message-ID: <08c85032-aa0f-3a23-1697-a94451343ec3@redhat.com>
Date: Mon, 13 Jan 2020 18:55:50 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <14f1ecbb-e746-83ce-1e72-3b87dcda75fc@oracle.com>
Content-Language: en-US
X-MC-Unique: GOUzdamaON6u4_ZrbUW72g-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_052601_939154_1A4A56FD 
X-CRM114-Status: GOOD (  27.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "bhupesh.linux >> Bhupesh SHARMA" <bhupesh.linux@gmail.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gMDEvMDcvMjAyMCAwMzo0MCBBTSwgRXJpYyBEZVZvbGRlciB3cm90ZToKPiBCaHVwZXNoLAo+
IEknbSBmaW5kaW5nIG15c2VsZiBzbGFtbWVkIHdpdGggb3RoZXIgdGFza3MsIGlmIHlvdSdkIGxp
a2UgdG8ga2ljayBzdGFydCAKPiB0aGlzIHBhdGNoLCB0aGVuIHBsZWFzZSBmZWVsIGZyZWUhCj4g
ZXJpYwoKT2sgRXJpYywKCkxldCBtZSB0cnkgdG8gc2VuZCBwYXRjaGVzIHRvIGZpeCB0aGUgc2Ft
ZS4KClRoYW5rcywKQmh1cGVzaAoKPiAKPiBPbiAxMi8yMy8xOSAxMjo1MCBBTSwgQmh1cGVzaCBT
aGFybWEgd3JvdGU6Cj4+IE9uIFRodSwgRGVjIDE5LCAyMDE5IGF0IDExOjI3IFBNIEVyaWMgRGVW
b2xkZXIgCj4+IDxlcmljLmRldm9sZGVyQG9yYWNsZS5jb20+IHdyb3RlOgo+Pj4KPj4+IEJodXBl
c2gsCj4+PiBUaGFuayB5b3UuIEZvciB0aGUgZm9ybWFsIHBhdGNoLCB3b3VsZCB5b3UgYmUgb2sg
d2l0aCBhIHR3byBwaGFzZSAKPj4+IGFwcHJvYWNoLCBmaXJzdCB3aGVyZSB3ZSBhZGQgaW4KPj4+
IHRoZSBkYmdwcmludGYoKSwKPj4KPj4gU3VyZSBFcmljLCBJIHRoaW5rIHlvdSBjYW4gc2VuZCB0
aGUgcGF0Y2ggd2l0aCB0aGUgZGJncHJpbnRmKCkgcmlnaHQKPj4gYXdheS4gSXQgc2VlbXMgYSBz
dHJhaWdodCBmb3J3YXJkIGNoYW5nZSBhbmQgc2hvdWxkIGJlIGFjY2VwdGFibGUgdG8KPj4gb3Ro
ZXIgcmV2aWV3ZXJzIEkgYmVsaWV2ZS4KPj4KPj4+IGFuZCBmb2xsb3dlZCBsYXRlciBieSBhIGNv
bnNvbGlkYXRpb24gb2YgdGhlIC0tY29tbWFuZC1saW5lLCAtLWFwcGVuZCwKPj4+IC0tcmV1c2Ut
Y21kbGluZSBvcHRpb24gY29kZT8KPj4KPj4gQWN0dWFsbHksIEkgZGlkIHNvbWUgd29yayBhIGZl
dyBtb250aHMgYWdvIChvbiB0aGUgcmVxdWVzdCBvZiBhbiBhcm0zMgo+PiBrZXhlYy10b29scyB1
c2VyKSBvbiB0aGlzIGNvbnNvbGlkYXRpb24sIGJ1dCBJIG5ldmVyIGdvdCB0aGUgdGltZSB0bwo+
PiBjb21wbGV0ZSB0aGUgc2FtZS4KPj4KPj4gSSB3aWxsIHRyeSB0byBmaW5kIG91dCBzb21lIHRp
bWUgb3ZlciB0aGlzIHdlZWsgdG8gY29uc29saWRhdGUgdGhlc2UKPj4gZmVhdHVyZXMgYW5kIHNl
bmQgYW4gUkZDIHBhdGNoLiBJIHdpbGwgQ2MgeW91IHRvIHRoZSBzYW1lLiBIb3BlZnVsbHkKPj4g
dGhhdCBzaG91bGQgZG8gdGhlIHRyaWNrLgo+Pgo+PiBUaGFua3MsCj4+IEJodXBlc2gKPj4KPj4+
IE9uIDEyLzE5LzE5IDc6MzQgQU0sIEJodXBlc2ggU2hhcm1hIHdyb3RlOgo+Pj4+IEhpIEVyaWMs
Cj4+Pj4KPj4+PiBPbiAxMi8xOS8yMDE5IDEyOjMwIEFNLCBFcmljIERlVm9sZGVyIHdyb3RlOgo+
Pj4+PiBUaGFua3MgQmh1cGVzaCBmb3IgdGhlIGZlZWRiYWNrLCByZXNwb25zZXMgYmVsb3chCj4+
Pj4+IGVyaWMKPj4+Pj4KPj4+Pj4gT24gMTIvMTcvMTkgMTo1OSBQTSwgQmh1cGVzaCBTaGFybWEg
d3JvdGU6Cj4+Pj4+PiBIaSBFcmljLAo+Pj4+Pj4KPj4+Pj4+IE9uIDEyLzE3LzIwMTkgMDI6MDIg
QU0sIEVyaWMgRGVWb2xkZXIgd3JvdGU6Cj4+Pj4+Pj4gVGhlIC0tY29tbWFuZC1saW5lLCAtLWFw
cGVuZCwgYW5kIC0tcmV1c2UtY21kbGluZSBvcHRpb25zIHRvIAo+Pj4+Pj4+IGtleGVjIGNhbgo+
Pj4+Pj4+IGJlIHVzZWQgaW4gY29tYmluYXRpb24gdG8gY3JhZnQgYSBrZXJuZWwgY29tbWFuZCBs
aW5lIGZvciBhIGtlcm5lbAo+Pj4+Pj4+IGxvYWRlZCB2aWEga2V4ZWMuIEluIGFkZGl0aW9uLCB0
aGUga2V4ZWMgdG9vbCBtYXkgYWxzbyBtYW5pcHVsYXRlCj4+Pj4+Pj4gZnVydGhlciB0aGUgY29t
bWFuZCBsaW5lLCBlZy4gIGVsZmNvcmVoZHIgYWRkaXRpb24uCj4+Pj4+Pgo+Pj4+Pj4gVGhhbmtz
IGZvciBwcm9wb3NpbmcgdGhpcyBjaGFuZ2UuIEkgaGF2ZSBzb21lIGNvbW1lbnRzL3F1ZXJpZXMg
Cj4+Pj4+PiAoc2VlIGJlbG93KS4KPj4+Pj4+Cj4+Pj4+Pj4gVG8gYWlkIGluIGRlYnVnZ2luZyBr
ZHVtcC9rZXhlYyByZWxhdGVkIGlzc3VlcywgaXQgd291bGQgYmUgaGVscGZ1bAo+Pj4+Pj4+IGZv
ciBrZXhlYyB0byBwcmludCB0aGUgZmluYWwgY29uc3RydWN0ZWQga2VybmVsIGNvbW1hbmQgbGlu
ZSAKPj4+Pj4+PiBhcmd1bWVudC4KPj4+Pj4+Pgo+Pj4+Pj4+IEZvciBleGFtcGxlLCB0aGUgZm9s
bG93aW5nIHNpbXBsZSBjaGFuZ2UgKGZvciBpMzg2L3g4Nl82NCk6Cj4+Pj4+Pj4KPj4+Pj4+PiBk
aWZmIC0tZ2l0IGEva2V4ZWMvYXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5jIAo+Pj4+Pj4+IGIv
a2V4ZWMvYXJjaC9pMzg2L3g4Ni1saW51eC1zZXR1cC5jCj4+Pj4+Pj4gaW5kZXggMDU3ZWUxNC4u
NmRjNGFkYyAxMDA2NDQKPj4+Pj4+PiAtLS0gYS9rZXhlYy9hcmNoL2kzODYveDg2LWxpbnV4LXNl
dHVwLmMKPj4+Pj4+PiArKysgYi9rZXhlYy9hcmNoL2kzODYveDg2LWxpbnV4LXNldHVwLmMKPj4+
Pj4+PiBAQCAtNTcsNiArNTcsOCBAQCB2b2lkIHNldHVwX2xpbnV4X2Jvb3Rsb2FkZXJfcGFyYW1l
dGVyc19oaWdoKAo+Pj4+Pj4+ICAgICAgICBjaGFyICpjbWRsaW5lX3B0cjsKPj4+Pj4+PiAgICAg
ICAgdW5zaWduZWQgbG9uZyBpbml0cmRfYmFzZSwgaW5pdHJkX2FkZHJfbWF4Owo+Pj4+Pj4+Cj4+
Pj4+Pj4gKyAgICBwcmludGYoIkZpbmFsIGtlcm5lbCBjbWRsaW5lOiAnJXMnXG4iLCBjbWRsaW5l
KTsKPj4+Pj4+PiArCj4+Pj4+Pgo+Pj4+Pj4gSWYgd2Ugd2FudCB0byBhZGQgdGhpcyBmb3IgZGVi
dWdnaW5nIHB1cnBvc2VzLCBpdHMgYmV0dGVyIHRvIGhhdmUgCj4+Pj4+PiBkYmdwcmludGYoKSBp
bnN0ZWFkIG9mIHByaW50ZigpCj4+Pj4+PiBoZXJlLiBUaGlzIHdpbGwgbWFrZSBzdXJlIHRoYXQg
dGhlIGRlYnVnIG1lc3NhZ2UgaXMgcHJpbnRlZCBvbmx5IAo+Pj4+Pj4gd2hlbiAnLWQnIGZsYWcg
aXMgc3BlY2lmaWVkCj4+Pj4+PiB3aGlsZSBjYWxsaW5nIGtleGVjIHV0aWxpdHkgZnJvbSBjb21t
YW5kLWxpbmUuCj4+Pj4+Cj4+Pj4+IFllcyEgSSB1c2VkIHByaW50ZigpIG1lcmVseSB0byBwcm92
aWRlIGFuIGV4YW1wbGUgb2Ygd2hhdCBpcyBwb3NzaWJsZS4KPj4+Pgo+Pj4+IE9rLgo+Pj4+Cj4+
Pj4+Pj4gICAgICAgIC8qIFNheSBJJ20gYSBib290IGxvYWRlciAqLwo+Pj4+Pj4+ICAgICAgICBy
ZWFsX21vZGUtPmxvYWRlcl90eXBlID0gTE9BREVSX1RZUEVfS0VYRUMgPDwgNDsKPj4+Pj4+Pgo+
Pj4+Pj4+IHJlc3VsdHMgaW4gdGhlIGZvbGxvd2luZyBvbiBhIHN5c3RlbWQtYmFzZWQgc3lzdGVt
IChmb3JtYXR0ZWQgdG8gZml0Cj4+Pj4+Pj4gaW4gNzAgY2hhciBsaW5lcyk6Cj4+Pj4+Pj4KPj4+
Pj4+PiAlIHN5c3RlbWN0bCBzdGF0dXMgLWwga2R1bXAuc2VydmljZQo+Pj4+Pj4+IOKXjyBrZHVt
cC5zZXJ2aWNlIC0gQ3Jhc2ggcmVjb3Zlcnkga2VybmVsIGFybWluZwo+Pj4+Pj4+ICAgICAgTG9h
ZGVkOiBsb2FkZWQgKC91c3IvbGliL3N5c3RlbWQvc3lzdGVtL2tkdW1wLnNlcnZpY2U7IGVuYWJs
ZWQ7Cj4+Pj4+Pj4gICAgICAgdmVuZG9yIHByZXNldDogZW5hYmxlZCkKPj4+Pj4+PiAgICAgIEFj
dGl2ZTogYWN0aXZlIChleGl0ZWQpIHNpbmNlIE1vbiAyMDE5LTEyLTE2IDE0OjU5OjIxIEVTVDsK
Pj4+Pj4+PiAgICAgICAybWluIDUzcyBhZ28KPj4+Pj4+PiAgICAgUHJvY2VzczogMTQwNTggRXhl
Y1N0b3A9L3Vzci9iaW4va2R1bXBjdGwgc3RvcCAoY29kZT1leGl0ZWQsCj4+Pj4+Pj4gICAgICBz
dGF0dXM9MC9TVUNDRVNTKQo+Pj4+Pj4+ICAgICBQcm9jZXNzOiAxNDA3MyBFeGVjU3RhcnQ9L3Vz
ci9iaW4va2R1bXBjdGwgc3RhcnQgKGNvZGU9ZXhpdGVkLAo+Pj4+Pj4+ICAgICAgc3RhdHVzPTAv
U1VDQ0VTUykKPj4+Pj4+PiAgICBNYWluIFBJRDogMTQwNzMgKGNvZGU9ZXhpdGVkLCBzdGF0dXM9
MC9TVUNDRVNTKQo+Pj4+Pj4+Cj4+Pj4+Pj4gRGVjIDE2IDE0OjU5OjE4IHZtMzY0IGtkdW1wY3Rs
WzE0MDU4XTogU3RvcHBpbmcga2R1bXA6IFtPS10KPj4+Pj4+PiBEZWMgMTYgMTQ6NTk6MTggdm0z
NjQgc3lzdGVtZFsxXTogU3RvcHBlZCBDcmFzaCByZWNvdmVyeSBrZXJuZWwgCj4+Pj4+Pj4gYXJt
aW5nLgo+Pj4+Pj4+IERlYyAxNiAxNDo1OToxOCB2bTM2NCBzeXN0ZW1kWzFdOiBTdGFydGluZyBD
cmFzaCByZWNvdmVyeSBrZXJuZWwgCj4+Pj4+Pj4gYXJtaW5nLi4uCj4+Pj4+Pj4gRGVjIDE2IDE0
OjU5OjIxIHZtMzY0IGtkdW1wY3RsWzE0MDczXTogRmluYWwga2VybmVsIGNtZGxpbmU6IAo+Pj4+
Pj4+ICdCT09UX0lNQUdFPQo+Pj4+Pj4+ICAgIC92bWxpbnV6LTQuMTQuMzUtMTkwMi43LjMuMS5l
bDd1ZWsueDg2XzY0IHJvIHJoZ2IgcXVpZXQgCj4+Pj4+Pj4gTEFORz1lbl9VUy5VVEYtOAo+Pj4+
Pj4+ICAgIGlycXBvbGwgbnJfY3B1cz0xIHJlc2V0X2RldmljZXMgY2dyb3VwX2Rpc2FibGU9bWVt
b3J5IG1jZT1vZmYgCj4+Pj4+Pj4gbnVtYT1vZmYKPj4+Pj4+PiAgICB1ZGV2LmNoaWxkcmVuLW1h
eD0yIHBhbmljPTEwIHJvb3RmbGFncz1ub2ZhaWwgYWNwaV9ub19tZW1ob3RwbHVnCj4+Pj4+Pj4g
ICAgdHJhbnNwYXJlbnRfaHVnZXBhZ2U9bmV2ZXIgbm9rYXNsciBub3ZtY29yZWRkIAo+Pj4+Pj4+
IGRpc2FibGVfY3B1X2FwaWNpZD0wCj4+Pj4+Pj4gICAgZWxmY29yZWhkcj05MDE0OTJLJwo+Pj4+
Pj4+IERlYyAxNiAxNDo1OToyMSB2bTM2NCBzeXN0ZW1kWzFdOiBTdGFydGVkIENyYXNoIHJlY292
ZXJ5IGtlcm5lbCAKPj4+Pj4+PiBhcm1pbmcuCj4+Pj4+Pj4gRGVjIDE2IDE0OjU5OjIxIHZtMzY0
IGtkdW1wY3RsWzE0MDczXToga2V4ZWM6IGxvYWRlZCBrZHVtcCBrZXJuZWwKPj4+Pj4+PiBEZWMg
MTYgMTQ6NTk6MjEgdm0zNjQga2R1bXBjdGxbMTQwNzNdOiBTdGFydGluZyBrZHVtcDogW09LXQo+
Pj4+Pj4+Cj4+Pj4+Pj4gYW5kIHRoZSBvdXRwdXQgaXMgYWxzbyBhdmFpbGFibGUgaW4gL3Zhci9s
b2cvbWVzc2FnZXMuCj4+Pj4+Pgo+Pj4+Pj4gU2luY2Uga2R1bXBjdGwgaXMgYSBkaXN0cmlidXRp
b24gc3BlY2lmaWMgc2NyaXB0IChVc2VkIGJ5IAo+Pj4+Pj4gRmVkb3JhL1JIRUwpLCB3aGljaCBp
bnZva2VzICdrZXhlYycKPj4+Pj4+IHVuZGVyIHRoZSBob29kLCB3ZSBjYW4gZGlzY3VzcyB0aGUg
ZmVhdHVyZXMgc3VwcG9ydGVkIGJ5ICdrZXhlYycgCj4+Pj4+PiByYXRoZXIgdGhhbiB0aGUgZGlz
dHJpYnV0aW9uCj4+Pj4+PiBzcGVjaWZpYyBzY3JpcHRzIChkaXNjdXNzaW9uIHJlZ2FyZGluZyB3
aGljaCBhcmUgcHJvYmFibHkgbW9yZSAKPj4+Pj4+IHN1aXRlZCB0byB0aGUgRmVkb3JhIGtleGVj
IGxpc3Q6Cj4+Pj4+PiBrZXhlY0BsaXN0cy5mZWRvcmFwcm9qZWN0Lm9yZykKPj4+Pj4KPj4+Pj4g
QWdyZWVkLCB0aGlzIFJGQyBpcyBmb3IgYSBjaGFuZ2UgdG8ga2V4ZWMsIG5vdGluZyB0aGF0IHdy
YXBwZXIgCj4+Pj4+IHNjcmlwdHMgc3VjaCBhcyBrZHVtcGN0bCBhcmUKPj4+Pj4gaW5zdWZmaWNp
ZW50IHRvIHByb3ZpZGUgdGhlIGZ1bmN0aW9uYWxpdHkgcmVxdWVzdGVkLgo+Pj4+Pgo+Pj4+Pj4K
Pj4+Pj4+PiBUaGVyZSBtaWdodCBhbHNvIGJlIGFuIG9wcG9ydHVuaXR5IHRvIGNvbnNvbGlkYXRl
IGhhbmRsaW5nIG9mIHRoZQo+Pj4+Pj4+IGtlcm5lbCBjb21tYW5kIGxpbmUsIGFzIG1vc3QgYXJj
aCB0YXJnZXRzIGhhdmUgdGhlIC0tY29tbWFuZC1saW5lLAo+Pj4+Pj4+IC0tYXBwZW5kLCBhbmQg
LS1yZXVzZS1jbWRsaW5lIG9wdGlvbnMsIHRob3VnaCBlYWNoIGFyY2ggCj4+Pj4+Pj4gaW5kZXBl
bmRlbnRseQo+Pj4+Pj4+IGNvZGVzIHRoZSBzdXBwb3J0IGZvciB0aGVzZSBvcHRpb25zLgo+Pj4+
Pj4KPj4+Pj4+IFRoaXMgc2VlbXMgbGlrZSBhIGdvb2QgaWRlYSwgbW9yZSBvbiB0aGUgc2FtZSBi
ZWxvdyAuLi4KPj4+Pj4+Cj4+Pj4+Pj4gTm90ZTogU2ltcGx5IHByaW50aW5nIHRoZSBjbWRsaW5l
IGluIHNjcmlwdHMgc3VjaCBhcyBrZHVtcGN0bCBtYXkgCj4+Pj4+Pj4gbm90Cj4+Pj4+Pj4gcmVz
dWx0IGluIHRoZSBzYW1lIG9yZGVyaW5nLCBhbmQgd2lsbCBvbWl0IGFueSBhZGRpdGlvbiBtYWRl
IAo+Pj4+Pj4+IGludGVybmFsbHkKPj4+Pj4+PiBieSBrZXhlYywgc3VjaCBhcyB0aGUgZWxmY29y
ZWhkci4KPj4+Pj4+Pgo+Pj4+Pj4+IEkgcHJvcG9zZSB0aGUgYWRkaXRpb24gb2YgYW4gb3B0aW9u
IHRvIGtleGVjLCAtLXByaW50LWtjbCAodG8gbWlycm9yCj4+Pj4+Pj4gLS1wcmludC1ja3IpLCB0
aGF0IHdvdWxkIGNvbnRyb2wgc3VjaCBwcmludGluZywgYXMgd2VsbCBhcyB0aGUgCj4+Pj4+Pj4g
bmVlZGVkCj4+Pj4+Pj4gcGVyIGFyY2ggY29uZGl0aW9uYWwgcHJpbnQgc3RhdGVtZW50cyBzaW1p
bGFyIHRvIHRoZSBhYm92ZSB0byAKPj4+Pj4+PiBwcmludCB0aGUKPj4+Pj4+PiBmaW5hbCBjb25z
dHJ1Y3RlZCBrZXJuZWwgY29tbWFuZCBsaW5lLgo+Pj4+Pj4KPj4+Pj4+IC4uLiBJIGFtIG5vdCBz
dXJlIEkgdW5kZXJzdGFuZCB0aGUgYWJvdmUgcG9pbnQuIExvb2tpbmcgYXQgdGhlIAo+Pj4+Pj4g
bGF0ZXN0IGtleGVjLXRvb2xzIG1hbiBwYWdlIChzZWU6Cj4+Pj4+PiBnaXQ6Ly9naXQua2VybmVs
Lm9yZy9wdWIvc2NtL3V0aWxzL2tlcm5lbC9rZXhlYy9rZXhlYy10b29scy5naXQpLCAKPj4+Pj4+
IEkgY291bGRuJ3QgZmluZCAnLS1wcmludC1ja3InCj4+Pj4+PiBvcHRpb246Cj4+Pj4+Pgo+Pj4+
Pj4gLS1wcmludC1ja3Itc2l6ZTogUHJpbnQgY3Jhc2gga2VybmVsIHJlZ2lvbiBzaXplLCBpZiBh
dmFpbGFibGUuCj4+Pj4+Pgo+Pj4+Pj4gQ2FuIHlvdSBwbGVhc2UgZWxhYm9yYXRlIG9uICctLXBy
aW50LWNrcicgYW5kICctLXByaW50LWtjbCcgCj4+Pj4+PiBvcHRpb25zIG1vcmUuCj4+Pj4+Cj4+
Pj4+IFlvdSBwcm9wb3NlZCB1c2luZyBkYmdwcmludGYoKSBpbiBjb25qdW5jdGlvbiB3aXRoIHRo
ZSAtZCBvcHRpb247IAo+Pj4+PiBhbmQgdGhhdCBtYWtlcyBncmVhdCBzZW5zZTsgSQo+Pj4+PiBo
YWQgbm90IGluIG15IGVhZ2VybmVzcyB0byBwcm9kdWNlIHRoaXMgUkZDLgo+Pj4+Cj4+Pj4gT2ss
IG5vIHByb2JsZW0uCj4+Pj4KPj4+Pj4gSW5zdGVhZCwgSSBwcm9wb3NlZCBhbm90aGVyIG9wdGlv
biAtLXByaW50LWtjbCAoZm9yIHByaW50IGtlcm5lbCAKPj4+Pj4gY29tbWFuZCBsaW5lKSB0byBj
b25kaXRpb25hbGx5Cj4+Pj4+IHByaW50IHRoZSBpbmZvcm1hdGlvbi4gSSB3YXMgdXNpbmcgLS1w
cmludC1ja3IgYXMgYW4gZXhhbXBsZSBvZiAKPj4+Pj4gc2ltaWxhciBvcHRpb24gdXNlZCB0byBw
cmludAo+Pj4+PiBpbmZvcm1hdGlvbiAoaW4gdGhpcyBjYXNlLCB0aGUgY3Jhc2gga2VybmVsIHJl
Z2lvbikuIE90aGVyIHRoYW4gYSAKPj4+Pj4gc2ltaWxhciBuYW1pbmcgY29udmVudGlvbiwgdGhl
cmUKPj4+Pj4gaXMgbm8gY29ycmVsYXRpb24gYmV0d2VlbiAtLXByaW50LWNrciBhbmQgLS1wcmlu
dC1rY2wsIGFuZCBpbmRlZWQgCj4+Pj4+IGV2ZW4gLS1wcmludC1rY2wgbWlnaHQgYmUKPj4+Pj4g
dW4tbmVjZXNzYXJ5IGdpdmVuIGRiZ3ByaW50ZigpLgo+Pj4+Cj4+Pj4gU3VyZSwgbWFrZXMgc2Vu
c2UuCj4+Pj4gSSB0aGluayB5b3UgY2FuIGdvIGFoZWFkIGFuZCBwb3N0IGEgZm9ybWFsIHBhdGNo
IHdpdGggJ2RiZ3ByaW50ZigpJyAKPj4+PiBiZWluZyB1c2VkLiBPciBpZiB5b3Ugd2FudCwgSQo+
Pj4+IGNhbiB0cnkgYW5kIHByb3Bvc2UgYSBzaW1pbGFyIHBhdGNoIGZvciB1cHN0cmVhbSBrZXhl
Yy10b29scy4KPj4+Pgo+Pj4+IFBsZWFzZSBsZXQgbWUga25vdy4KPj4+Pgo+Pj4+IFRoYW5rcywK
Pj4+PiBCaHVwZXNoCj4+Pj4KPj4+Cj4+Cj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhl
Ywo=
