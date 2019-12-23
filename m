Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25CE4129206
	for <lists+kexec@lfdr.de>; Mon, 23 Dec 2019 07:50:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bM0n+EfQr7P4WravB9wenO/BPULLB/OTQHR+9oPuYV8=; b=YhswSPdvjZliMY
	KeTt9OCibpY8W9NSK1Le+VEhwALv5NLl7uf+jZhGgSi0M9/CHeAvOuei1L6wLkufk7JXh7M/zPEhK
	jIL/Ndl//PjQIrssS3IWGoOZN5DHlVc1XGFSB1S94GvFpS+yBUrIuDqexN+g8pK28UacHw3XZVWeb
	bFqH5dXQjXPhsBo1YVP2USrVTrLzhMvl7rJ91KtxwRYgeK9HRiwN29WfSQUcC9KynMOZlhx+PBVQ9
	zcMpWwafbs6ydvlQ7uvgepn2OqXlYcXitDYtFxJ/sOlzr/CBVgwvxKVbyEf4egZKT3Z0RiODpHW5q
	Ki9zCPqzoXVnW6dbFL0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijHYI-0000ny-EQ; Mon, 23 Dec 2019 06:50:50 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijHYF-0000nQ-68
 for kexec@lists.infradead.org; Mon, 23 Dec 2019 06:50:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1577083843;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XlLTYUfSrpwhWzkadshHA7+7eFTfj1Fa7/1cR5dFs+M=;
 b=YDYw8H0aus32GE2MbW5+YsmY01g7jaDYcgmF0qivyzQQZzmetvEwus+KzZKYELxNOG65Zb
 LNCrwAFHzhxvT0OwebYW2o7DD/We0/v+xYgY+j3F75ElwJ/f26fFoWhaPk1Jf+VwXoZHRc
 qUhBEqWBf3t14YM/NaFkkAInAgu0qaM=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-214-DHPFV2dnNNaSaqaCgkOpGA-1; Mon, 23 Dec 2019 01:50:40 -0500
Received: by mail-qt1-f199.google.com with SMTP id e8so10630532qtg.9
 for <kexec@lists.infradead.org>; Sun, 22 Dec 2019 22:50:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=XlLTYUfSrpwhWzkadshHA7+7eFTfj1Fa7/1cR5dFs+M=;
 b=Zih/5tFWp5hBPG6CnzyUShgfMv7bWU/ZZNpzU75caZgRH7Qbk7XAnjwdreLVSwNRu5
 Htd+5DBu+tZ+d8Fb2Cwv2901ebdCiM/0pGt78Q3bRCuaGy9+THERMp7Jff70N/CkLAas
 CqXTNzpXQmlsAvJ945l2bHDFf/Pn54465+oYxJNBIEuVUdyQp6WIuEeCKayuru4aKmpB
 n+ajD8uC1w8VhPSUxgHTg48t0iV+vWxSlmKJ3IUWqqQPR4qenNWWwxSquS5AqySSAV3c
 ZkxsRPR2E4MXMaERoXyrygaaBc9nU/BpO1/rk35X5Q07UGWuq0e5+VmV0EpfQxctl6oa
 tS4Q==
X-Gm-Message-State: APjAAAXR/zgBoHu5ld9hwl9Rw3a0WWzI+Z4F4zHxNvn2+UT/liR+tsRn
 8wkCAaOnLX3lUahAWgboFgWbIWQq47QJccui3bJ/UEN9MWXmOylHxbMwQL8uX1QQvWkYvMJKTQT
 esSnx+gi5HOyjN8Pzh+coeTOlyfUgjC+YkAIi
X-Received: by 2002:a37:a014:: with SMTP id j20mr24908124qke.456.1577083840018; 
 Sun, 22 Dec 2019 22:50:40 -0800 (PST)
X-Google-Smtp-Source: APXvYqwMcgIasz02OSgRYYYgX9AIDJQBjHGd/lA1eOIi9vG2EksXUU+DaofGFegQY+PFYOmwW3UjkJKJtcwVqqUZH/A=
X-Received: by 2002:a37:a014:: with SMTP id j20mr24908108qke.456.1577083839703; 
 Sun, 22 Dec 2019 22:50:39 -0800 (PST)
MIME-Version: 1.0
References: <056beee8-6caf-1aec-a111-1d0c37bcb137@oracle.com>
 <4bb55b9c-1585-4d5a-2bd7-ec40b8fd0eed@redhat.com>
 <319db0e3-0e1b-bd5b-e751-8750bae1456d@oracle.com>
 <a70d5b14-566e-2fbd-7b2c-3054ccb0bee9@redhat.com>
 <27ef47f0-6e68-df67-d701-9a73cdc79728@oracle.com>
In-Reply-To: <27ef47f0-6e68-df67-d701-9a73cdc79728@oracle.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 23 Dec 2019 12:20:27 +0530
Message-ID: <CACi5LpO8udqw2ps77LUW-y4zLdbsdq84SGo85WC7m-kNjyEX+g@mail.gmail.com>
Subject: Re: [RFC] printing the final constructed kernel command line
To: Eric DeVolder <eric.devolder@oracle.com>
X-MC-Unique: DHPFV2dnNNaSaqaCgkOpGA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191222_225047_678631_7A0A9124 
X-CRM114-Status: GOOD (  31.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gVGh1LCBEZWMgMTksIDIwMTkgYXQgMTE6MjcgUE0gRXJpYyBEZVZvbGRlciA8ZXJpYy5kZXZv
bGRlckBvcmFjbGUuY29tPiB3cm90ZToKPgo+IEJodXBlc2gsCj4gVGhhbmsgeW91LiBGb3IgdGhl
IGZvcm1hbCBwYXRjaCwgd291bGQgeW91IGJlIG9rIHdpdGggYSB0d28gcGhhc2UgYXBwcm9hY2gs
IGZpcnN0IHdoZXJlIHdlIGFkZCBpbgo+IHRoZSBkYmdwcmludGYoKSwKClN1cmUgRXJpYywgSSB0
aGluayB5b3UgY2FuIHNlbmQgdGhlIHBhdGNoIHdpdGggdGhlIGRiZ3ByaW50ZigpIHJpZ2h0CmF3
YXkuIEl0IHNlZW1zIGEgc3RyYWlnaHQgZm9yd2FyZCBjaGFuZ2UgYW5kIHNob3VsZCBiZSBhY2Nl
cHRhYmxlIHRvCm90aGVyIHJldmlld2VycyBJIGJlbGlldmUuCgo+IGFuZCBmb2xsb3dlZCBsYXRl
ciBieSBhIGNvbnNvbGlkYXRpb24gb2YgdGhlIC0tY29tbWFuZC1saW5lLCAtLWFwcGVuZCwKPiAt
LXJldXNlLWNtZGxpbmUgb3B0aW9uIGNvZGU/CgpBY3R1YWxseSwgSSBkaWQgc29tZSB3b3JrIGEg
ZmV3IG1vbnRocyBhZ28gKG9uIHRoZSByZXF1ZXN0IG9mIGFuIGFybTMyCmtleGVjLXRvb2xzIHVz
ZXIpIG9uIHRoaXMgY29uc29saWRhdGlvbiwgYnV0IEkgbmV2ZXIgZ290IHRoZSB0aW1lIHRvCmNv
bXBsZXRlIHRoZSBzYW1lLgoKSSB3aWxsIHRyeSB0byBmaW5kIG91dCBzb21lIHRpbWUgb3ZlciB0
aGlzIHdlZWsgdG8gY29uc29saWRhdGUgdGhlc2UKZmVhdHVyZXMgYW5kIHNlbmQgYW4gUkZDIHBh
dGNoLiBJIHdpbGwgQ2MgeW91IHRvIHRoZSBzYW1lLiBIb3BlZnVsbHkKdGhhdCBzaG91bGQgZG8g
dGhlIHRyaWNrLgoKVGhhbmtzLApCaHVwZXNoCgo+IE9uIDEyLzE5LzE5IDc6MzQgQU0sIEJodXBl
c2ggU2hhcm1hIHdyb3RlOgo+ID4gSGkgRXJpYywKPiA+Cj4gPiBPbiAxMi8xOS8yMDE5IDEyOjMw
IEFNLCBFcmljIERlVm9sZGVyIHdyb3RlOgo+ID4+IFRoYW5rcyBCaHVwZXNoIGZvciB0aGUgZmVl
ZGJhY2ssIHJlc3BvbnNlcyBiZWxvdyEKPiA+PiBlcmljCj4gPj4KPiA+PiBPbiAxMi8xNy8xOSAx
OjU5IFBNLCBCaHVwZXNoIFNoYXJtYSB3cm90ZToKPiA+Pj4gSGkgRXJpYywKPiA+Pj4KPiA+Pj4g
T24gMTIvMTcvMjAxOSAwMjowMiBBTSwgRXJpYyBEZVZvbGRlciB3cm90ZToKPiA+Pj4+IFRoZSAt
LWNvbW1hbmQtbGluZSwgLS1hcHBlbmQsIGFuZCAtLXJldXNlLWNtZGxpbmUgb3B0aW9ucyB0byBr
ZXhlYyBjYW4KPiA+Pj4+IGJlIHVzZWQgaW4gY29tYmluYXRpb24gdG8gY3JhZnQgYSBrZXJuZWwg
Y29tbWFuZCBsaW5lIGZvciBhIGtlcm5lbAo+ID4+Pj4gbG9hZGVkIHZpYSBrZXhlYy4gSW4gYWRk
aXRpb24sIHRoZSBrZXhlYyB0b29sIG1heSBhbHNvIG1hbmlwdWxhdGUKPiA+Pj4+IGZ1cnRoZXIg
dGhlIGNvbW1hbmQgbGluZSwgZWcuICBlbGZjb3JlaGRyIGFkZGl0aW9uLgo+ID4+Pgo+ID4+PiBU
aGFua3MgZm9yIHByb3Bvc2luZyB0aGlzIGNoYW5nZS4gSSBoYXZlIHNvbWUgY29tbWVudHMvcXVl
cmllcyAoc2VlIGJlbG93KS4KPiA+Pj4KPiA+Pj4+IFRvIGFpZCBpbiBkZWJ1Z2dpbmcga2R1bXAv
a2V4ZWMgcmVsYXRlZCBpc3N1ZXMsIGl0IHdvdWxkIGJlIGhlbHBmdWwKPiA+Pj4+IGZvciBrZXhl
YyB0byBwcmludCB0aGUgZmluYWwgY29uc3RydWN0ZWQga2VybmVsIGNvbW1hbmQgbGluZSBhcmd1
bWVudC4KPiA+Pj4+Cj4gPj4+PiBGb3IgZXhhbXBsZSwgdGhlIGZvbGxvd2luZyBzaW1wbGUgY2hh
bmdlIChmb3IgaTM4Ni94ODZfNjQpOgo+ID4+Pj4KPiA+Pj4+IGRpZmYgLS1naXQgYS9rZXhlYy9h
cmNoL2kzODYveDg2LWxpbnV4LXNldHVwLmMgYi9rZXhlYy9hcmNoL2kzODYveDg2LWxpbnV4LXNl
dHVwLmMKPiA+Pj4+IGluZGV4IDA1N2VlMTQuLjZkYzRhZGMgMTAwNjQ0Cj4gPj4+PiAtLS0gYS9r
ZXhlYy9hcmNoL2kzODYveDg2LWxpbnV4LXNldHVwLmMKPiA+Pj4+ICsrKyBiL2tleGVjL2FyY2gv
aTM4Ni94ODYtbGludXgtc2V0dXAuYwo+ID4+Pj4gQEAgLTU3LDYgKzU3LDggQEAgdm9pZCBzZXR1
cF9saW51eF9ib290bG9hZGVyX3BhcmFtZXRlcnNfaGlnaCgKPiA+Pj4+ICAgICAgIGNoYXIgKmNt
ZGxpbmVfcHRyOwo+ID4+Pj4gICAgICAgdW5zaWduZWQgbG9uZyBpbml0cmRfYmFzZSwgaW5pdHJk
X2FkZHJfbWF4Owo+ID4+Pj4KPiA+Pj4+ICsgICAgcHJpbnRmKCJGaW5hbCBrZXJuZWwgY21kbGlu
ZTogJyVzJ1xuIiwgY21kbGluZSk7Cj4gPj4+PiArCj4gPj4+Cj4gPj4+IElmIHdlIHdhbnQgdG8g
YWRkIHRoaXMgZm9yIGRlYnVnZ2luZyBwdXJwb3NlcywgaXRzIGJldHRlciB0byBoYXZlIGRiZ3By
aW50ZigpIGluc3RlYWQgb2YgcHJpbnRmKCkKPiA+Pj4gaGVyZS4gVGhpcyB3aWxsIG1ha2Ugc3Vy
ZSB0aGF0IHRoZSBkZWJ1ZyBtZXNzYWdlIGlzIHByaW50ZWQgb25seSB3aGVuICctZCcgZmxhZyBp
cyBzcGVjaWZpZWQKPiA+Pj4gd2hpbGUgY2FsbGluZyBrZXhlYyB1dGlsaXR5IGZyb20gY29tbWFu
ZC1saW5lLgo+ID4+Cj4gPj4gWWVzISBJIHVzZWQgcHJpbnRmKCkgbWVyZWx5IHRvIHByb3ZpZGUg
YW4gZXhhbXBsZSBvZiB3aGF0IGlzIHBvc3NpYmxlLgo+ID4KPiA+IE9rLgo+ID4KPiA+Pj4+ICAg
ICAgIC8qIFNheSBJJ20gYSBib290IGxvYWRlciAqLwo+ID4+Pj4gICAgICAgcmVhbF9tb2RlLT5s
b2FkZXJfdHlwZSA9IExPQURFUl9UWVBFX0tFWEVDIDw8IDQ7Cj4gPj4+Pgo+ID4+Pj4gcmVzdWx0
cyBpbiB0aGUgZm9sbG93aW5nIG9uIGEgc3lzdGVtZC1iYXNlZCBzeXN0ZW0gKGZvcm1hdHRlZCB0
byBmaXQKPiA+Pj4+IGluIDcwIGNoYXIgbGluZXMpOgo+ID4+Pj4KPiA+Pj4+ICUgc3lzdGVtY3Rs
IHN0YXR1cyAtbCBrZHVtcC5zZXJ2aWNlCj4gPj4+PiDil48ga2R1bXAuc2VydmljZSAtIENyYXNo
IHJlY292ZXJ5IGtlcm5lbCBhcm1pbmcKPiA+Pj4+ICAgICBMb2FkZWQ6IGxvYWRlZCAoL3Vzci9s
aWIvc3lzdGVtZC9zeXN0ZW0va2R1bXAuc2VydmljZTsgZW5hYmxlZDsKPiA+Pj4+ICAgICAgdmVu
ZG9yIHByZXNldDogZW5hYmxlZCkKPiA+Pj4+ICAgICBBY3RpdmU6IGFjdGl2ZSAoZXhpdGVkKSBz
aW5jZSBNb24gMjAxOS0xMi0xNiAxNDo1OToyMSBFU1Q7Cj4gPj4+PiAgICAgIDJtaW4gNTNzIGFn
bwo+ID4+Pj4gICAgUHJvY2VzczogMTQwNTggRXhlY1N0b3A9L3Vzci9iaW4va2R1bXBjdGwgc3Rv
cCAoY29kZT1leGl0ZWQsCj4gPj4+PiAgICAgc3RhdHVzPTAvU1VDQ0VTUykKPiA+Pj4+ICAgIFBy
b2Nlc3M6IDE0MDczIEV4ZWNTdGFydD0vdXNyL2Jpbi9rZHVtcGN0bCBzdGFydCAoY29kZT1leGl0
ZWQsCj4gPj4+PiAgICAgc3RhdHVzPTAvU1VDQ0VTUykKPiA+Pj4+ICAgTWFpbiBQSUQ6IDE0MDcz
IChjb2RlPWV4aXRlZCwgc3RhdHVzPTAvU1VDQ0VTUykKPiA+Pj4+Cj4gPj4+PiBEZWMgMTYgMTQ6
NTk6MTggdm0zNjQga2R1bXBjdGxbMTQwNThdOiBTdG9wcGluZyBrZHVtcDogW09LXQo+ID4+Pj4g
RGVjIDE2IDE0OjU5OjE4IHZtMzY0IHN5c3RlbWRbMV06IFN0b3BwZWQgQ3Jhc2ggcmVjb3Zlcnkg
a2VybmVsIGFybWluZy4KPiA+Pj4+IERlYyAxNiAxNDo1OToxOCB2bTM2NCBzeXN0ZW1kWzFdOiBT
dGFydGluZyBDcmFzaCByZWNvdmVyeSBrZXJuZWwgYXJtaW5nLi4uCj4gPj4+PiBEZWMgMTYgMTQ6
NTk6MjEgdm0zNjQga2R1bXBjdGxbMTQwNzNdOiBGaW5hbCBrZXJuZWwgY21kbGluZTogJ0JPT1Rf
SU1BR0U9Cj4gPj4+PiAgIC92bWxpbnV6LTQuMTQuMzUtMTkwMi43LjMuMS5lbDd1ZWsueDg2XzY0
IHJvIHJoZ2IgcXVpZXQgTEFORz1lbl9VUy5VVEYtOAo+ID4+Pj4gICBpcnFwb2xsIG5yX2NwdXM9
MSByZXNldF9kZXZpY2VzIGNncm91cF9kaXNhYmxlPW1lbW9yeSBtY2U9b2ZmIG51bWE9b2ZmCj4g
Pj4+PiAgIHVkZXYuY2hpbGRyZW4tbWF4PTIgcGFuaWM9MTAgcm9vdGZsYWdzPW5vZmFpbCBhY3Bp
X25vX21lbWhvdHBsdWcKPiA+Pj4+ICAgdHJhbnNwYXJlbnRfaHVnZXBhZ2U9bmV2ZXIgbm9rYXNs
ciBub3ZtY29yZWRkIGRpc2FibGVfY3B1X2FwaWNpZD0wCj4gPj4+PiAgIGVsZmNvcmVoZHI9OTAx
NDkySycKPiA+Pj4+IERlYyAxNiAxNDo1OToyMSB2bTM2NCBzeXN0ZW1kWzFdOiBTdGFydGVkIENy
YXNoIHJlY292ZXJ5IGtlcm5lbCBhcm1pbmcuCj4gPj4+PiBEZWMgMTYgMTQ6NTk6MjEgdm0zNjQg
a2R1bXBjdGxbMTQwNzNdOiBrZXhlYzogbG9hZGVkIGtkdW1wIGtlcm5lbAo+ID4+Pj4gRGVjIDE2
IDE0OjU5OjIxIHZtMzY0IGtkdW1wY3RsWzE0MDczXTogU3RhcnRpbmcga2R1bXA6IFtPS10KPiA+
Pj4+Cj4gPj4+PiBhbmQgdGhlIG91dHB1dCBpcyBhbHNvIGF2YWlsYWJsZSBpbiAvdmFyL2xvZy9t
ZXNzYWdlcy4KPiA+Pj4KPiA+Pj4gU2luY2Uga2R1bXBjdGwgaXMgYSBkaXN0cmlidXRpb24gc3Bl
Y2lmaWMgc2NyaXB0IChVc2VkIGJ5IEZlZG9yYS9SSEVMKSwgd2hpY2ggaW52b2tlcyAna2V4ZWMn
Cj4gPj4+IHVuZGVyIHRoZSBob29kLCB3ZSBjYW4gZGlzY3VzcyB0aGUgZmVhdHVyZXMgc3VwcG9y
dGVkIGJ5ICdrZXhlYycgcmF0aGVyIHRoYW4gdGhlIGRpc3RyaWJ1dGlvbgo+ID4+PiBzcGVjaWZp
YyBzY3JpcHRzIChkaXNjdXNzaW9uIHJlZ2FyZGluZyB3aGljaCBhcmUgcHJvYmFibHkgbW9yZSBz
dWl0ZWQgdG8gdGhlIEZlZG9yYSBrZXhlYyBsaXN0Ogo+ID4+PiBrZXhlY0BsaXN0cy5mZWRvcmFw
cm9qZWN0Lm9yZykKPiA+Pgo+ID4+IEFncmVlZCwgdGhpcyBSRkMgaXMgZm9yIGEgY2hhbmdlIHRv
IGtleGVjLCBub3RpbmcgdGhhdCB3cmFwcGVyIHNjcmlwdHMgc3VjaCBhcyBrZHVtcGN0bCBhcmUK
PiA+PiBpbnN1ZmZpY2llbnQgdG8gcHJvdmlkZSB0aGUgZnVuY3Rpb25hbGl0eSByZXF1ZXN0ZWQu
Cj4gPj4KPiA+Pj4KPiA+Pj4+IFRoZXJlIG1pZ2h0IGFsc28gYmUgYW4gb3Bwb3J0dW5pdHkgdG8g
Y29uc29saWRhdGUgaGFuZGxpbmcgb2YgdGhlCj4gPj4+PiBrZXJuZWwgY29tbWFuZCBsaW5lLCBh
cyBtb3N0IGFyY2ggdGFyZ2V0cyBoYXZlIHRoZSAtLWNvbW1hbmQtbGluZSwKPiA+Pj4+IC0tYXBw
ZW5kLCBhbmQgLS1yZXVzZS1jbWRsaW5lIG9wdGlvbnMsIHRob3VnaCBlYWNoIGFyY2ggaW5kZXBl
bmRlbnRseQo+ID4+Pj4gY29kZXMgdGhlIHN1cHBvcnQgZm9yIHRoZXNlIG9wdGlvbnMuCj4gPj4+
Cj4gPj4+IFRoaXMgc2VlbXMgbGlrZSBhIGdvb2QgaWRlYSwgbW9yZSBvbiB0aGUgc2FtZSBiZWxv
dyAuLi4KPiA+Pj4KPiA+Pj4+IE5vdGU6IFNpbXBseSBwcmludGluZyB0aGUgY21kbGluZSBpbiBz
Y3JpcHRzIHN1Y2ggYXMga2R1bXBjdGwgbWF5IG5vdAo+ID4+Pj4gcmVzdWx0IGluIHRoZSBzYW1l
IG9yZGVyaW5nLCBhbmQgd2lsbCBvbWl0IGFueSBhZGRpdGlvbiBtYWRlIGludGVybmFsbHkKPiA+
Pj4+IGJ5IGtleGVjLCBzdWNoIGFzIHRoZSBlbGZjb3JlaGRyLgo+ID4+Pj4KPiA+Pj4+IEkgcHJv
cG9zZSB0aGUgYWRkaXRpb24gb2YgYW4gb3B0aW9uIHRvIGtleGVjLCAtLXByaW50LWtjbCAodG8g
bWlycm9yCj4gPj4+PiAtLXByaW50LWNrciksIHRoYXQgd291bGQgY29udHJvbCBzdWNoIHByaW50
aW5nLCBhcyB3ZWxsIGFzIHRoZSBuZWVkZWQKPiA+Pj4+IHBlciBhcmNoIGNvbmRpdGlvbmFsIHBy
aW50IHN0YXRlbWVudHMgc2ltaWxhciB0byB0aGUgYWJvdmUgdG8gcHJpbnQgdGhlCj4gPj4+PiBm
aW5hbCBjb25zdHJ1Y3RlZCBrZXJuZWwgY29tbWFuZCBsaW5lLgo+ID4+Pgo+ID4+PiAuLi4gSSBh
bSBub3Qgc3VyZSBJIHVuZGVyc3RhbmQgdGhlIGFib3ZlIHBvaW50LiBMb29raW5nIGF0IHRoZSBs
YXRlc3Qga2V4ZWMtdG9vbHMgbWFuIHBhZ2UgKHNlZToKPiA+Pj4gZ2l0Oi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS91dGlscy9rZXJuZWwva2V4ZWMva2V4ZWMtdG9vbHMuZ2l0KSwgSSBjb3VsZG4n
dCBmaW5kICctLXByaW50LWNrcicKPiA+Pj4gb3B0aW9uOgo+ID4+Pgo+ID4+PiAtLXByaW50LWNr
ci1zaXplOiBQcmludCBjcmFzaCBrZXJuZWwgcmVnaW9uIHNpemUsIGlmIGF2YWlsYWJsZS4KPiA+
Pj4KPiA+Pj4gQ2FuIHlvdSBwbGVhc2UgZWxhYm9yYXRlIG9uICctLXByaW50LWNrcicgYW5kICct
LXByaW50LWtjbCcgb3B0aW9ucyBtb3JlLgo+ID4+Cj4gPj4gWW91IHByb3Bvc2VkIHVzaW5nIGRi
Z3ByaW50ZigpIGluIGNvbmp1bmN0aW9uIHdpdGggdGhlIC1kIG9wdGlvbjsgYW5kIHRoYXQgbWFr
ZXMgZ3JlYXQgc2Vuc2U7IEkKPiA+PiBoYWQgbm90IGluIG15IGVhZ2VybmVzcyB0byBwcm9kdWNl
IHRoaXMgUkZDLgo+ID4KPiA+IE9rLCBubyBwcm9ibGVtLgo+ID4KPiA+PiBJbnN0ZWFkLCBJIHBy
b3Bvc2VkIGFub3RoZXIgb3B0aW9uIC0tcHJpbnQta2NsIChmb3IgcHJpbnQga2VybmVsIGNvbW1h
bmQgbGluZSkgdG8gY29uZGl0aW9uYWxseQo+ID4+IHByaW50IHRoZSBpbmZvcm1hdGlvbi4gSSB3
YXMgdXNpbmcgLS1wcmludC1ja3IgYXMgYW4gZXhhbXBsZSBvZiBzaW1pbGFyIG9wdGlvbiB1c2Vk
IHRvIHByaW50Cj4gPj4gaW5mb3JtYXRpb24gKGluIHRoaXMgY2FzZSwgdGhlIGNyYXNoIGtlcm5l
bCByZWdpb24pLiBPdGhlciB0aGFuIGEgc2ltaWxhciBuYW1pbmcgY29udmVudGlvbiwgdGhlcmUK
PiA+PiBpcyBubyBjb3JyZWxhdGlvbiBiZXR3ZWVuIC0tcHJpbnQtY2tyIGFuZCAtLXByaW50LWtj
bCwgYW5kIGluZGVlZCBldmVuIC0tcHJpbnQta2NsIG1pZ2h0IGJlCj4gPj4gdW4tbmVjZXNzYXJ5
IGdpdmVuIGRiZ3ByaW50ZigpLgo+ID4KPiA+IFN1cmUsIG1ha2VzIHNlbnNlLgo+ID4gSSB0aGlu
ayB5b3UgY2FuIGdvIGFoZWFkIGFuZCBwb3N0IGEgZm9ybWFsIHBhdGNoIHdpdGggJ2RiZ3ByaW50
ZigpJyBiZWluZyB1c2VkLiBPciBpZiB5b3Ugd2FudCwgSQo+ID4gY2FuIHRyeSBhbmQgcHJvcG9z
ZSBhIHNpbWlsYXIgcGF0Y2ggZm9yIHVwc3RyZWFtIGtleGVjLXRvb2xzLgo+ID4KPiA+IFBsZWFz
ZSBsZXQgbWUga25vdy4KPiA+Cj4gPiBUaGFua3MsCj4gPiBCaHVwZXNoCj4gPgo+CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBs
aXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
