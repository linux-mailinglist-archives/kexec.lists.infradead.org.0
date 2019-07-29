Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1B527844E
	for <lists+kexec@lfdr.de>; Mon, 29 Jul 2019 07:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:Subject:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bLQhee9TQK2CCtks02ic9/bkMmww2ZI6hq6UykLf4qE=; b=QPv9UtVDlwMvkAsRPVyiGWKCD
	uHJoDP0meBoWhzcPQzJOkodaS30w7bYUOQjQ8g5Nz414uIIVdE3HpW+oFx3a9M384tvf9EEX5m3sz
	5Lq+QcNinviK6Xosgm89lOawWIQUEC3udDxlMX0S6xxOq6aQTnwv5X4ZHIPUAcqMLIXseT+h06L1H
	2KrDqFgmybKwjIU5b1YbrwbaupA1gWFpGaQMTiEl24FGxl4ITYSJFUmnNu7EwC+9yPrwBcmI/Al/+
	2kZHZ2ekVmcbZHnek6HaV7V/KY/8oU1VpeG95naFHmpr0Uala5LKzPXRj386zCvavoeeIZ5XPdxzd
	7kDu81Trg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrxne-0004BV-GZ; Mon, 29 Jul 2019 05:02:18 +0000
Received: from mail-pl1-f195.google.com ([209.85.214.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrxnX-0004BC-Po
 for kexec@lists.infradead.org; Mon, 29 Jul 2019 05:02:13 +0000
Received: by mail-pl1-f195.google.com with SMTP id y8so27021205plr.12
 for <kexec@lists.infradead.org>; Sun, 28 Jul 2019 22:02:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:subject:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ABy1/Af1LCWVfDI9rJZU+mkQPaXeprj2aLW+ASNuziA=;
 b=kclrSs6cGarkzQpj5ZfTbotAmR8sFme5wGGvJjwwmHjuJ2HJUfy8Hq0L3DmauK6KRv
 gjn55Mlzbo48+L0WWsOlJlDiq/4bFBuwNi/+6fBpVOZQ5KiurWvANXCAWs05fNbjMdWw
 odbe32ipWDq4nMMoTTWcGQwxo7jGTsGZeGg62oWoXbQjm4z0ZU9H2ZNmCnKiKf+xuYkx
 ecPheVSiUEIT46N59qY4kkZ4oTL9+iPZB0YEJyoDpiSKIAD6MiHDhxXWy37lxMarwieY
 sAJ+XRaN3WXcSpe6PQUSD6NDuNr/iFskJVaEA5L6eyV1ntRAKtY3xG/Qs+gLdkppVybS
 UxSw==
X-Gm-Message-State: APjAAAVye3fKS9PLN8C8/+JwI/YDNT/GpLLlk1jZtDviYvbaO0NZ26tr
 GADihBxdI0Z3GHmzs4r2wmnYZQ==
X-Google-Smtp-Source: APXvYqxEck1gu3C95nhAljx9ebOcyvFrttNJ68DZVWObyrkZMnhETg40qHyr5UXktM9yJSeHxEDA9A==
X-Received: by 2002:a17:902:42d:: with SMTP id
 42mr103266173ple.228.1564376530616; 
 Sun, 28 Jul 2019 22:02:10 -0700 (PDT)
Received: from localhost.localdomain ([42.111.25.174])
 by smtp.gmail.com with ESMTPSA id r188sm97313595pfr.16.2019.07.28.22.02.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Jul 2019 22:02:09 -0700 (PDT)
From: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: No compression technique of zImage/uImage detected - ARM
To: Maikel Coenen <maikel.coenen@nedap.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Bhupesh SHARMA <bhupesh.linux@gmail.com>
References: <34E10BEF-BF40-4230-BA02-5C64EDC372D2@nedap.com>
 <FD58192C-90D7-462E-8869-80F71A86D4E1@nedap.com>
Message-ID: <5088a9d0-5638-1c41-1968-fc973e773e52@redhat.com>
Date: Mon, 29 Jul 2019 10:32:04 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <FD58192C-90D7-462E-8869-80F71A86D4E1@nedap.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_220211_841011_E71A58D5 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

SGkgTWFpa2VsLAoKSSBoYXZlIGEgY291cGxlIG9mIHF1ZXJpZXMgKHNvIHRoYXQgSSBjYW4gaGVs
cCB5b3UgYmV0dGVyKS4gUGxlYXNlIHNlZSAKdGhlbSBpbi1saW5lOgoKT24gMDcvMjQvMjAxOSAw
Mjo0MyBQTSwgTWFpa2VsIENvZW5lbiB3cm90ZToKPiBIaSwKPiAgIAo+IEkgaGF2ZSBtZXQgYW4g
aXNzdWUgZHVyaW5nIGxvYWRpbmcgYSBuZXcga2VybmVsIHdpdGggS2V4ZWMgb24gYW4gQVJNdjUg
U29DLiBUaGUga2VybmVsIGlzIGEgNC4xOSB3aXRoIEd6aXAgY29tcHJlc3Npb24gYnV0IGR1cmlu
ZyBsb2FkaW5nIEtleGVjIGRvZXMgbm90IHJlY29nbml6ZSB0aGUgY29tcHJlc3Npb24uCj4gICAK
PiBJZiBJIGxvYWQgdGhlIG5ldyBrZXJuZWwgYW5kIGR0YiB3aXRoOgo+ICAgCj4ga2V4ZWMgLWwg
L2Jvb3QvekltYWdlIC1kIC0tZHRiPS9ib290L3UtYm9vdC5kdGIKCkNhbiB5b3UgcGxlYXNlIHNo
b3cgdGhlIG91dHB1dCBvZiB0aGUgZm9sbG93aW5nIGNvbW1hbmQ6CiQgZmlsZSAvYm9vdC96SW1h
Z2UKCkFsc28gY2FuIHlvdSBwbGVhc2UgbWFrZSBzdXJlIHRoYXQgdGhlIHpJbWFnZSBoYXMgdGhl
IHJpZ2h0IGd6aXAgaGVhZGVyIAo6IG1hZ2ljIGhlYWRlciAgMHgxZiwgMHg4YiAoXDAzNyBcMjEz
KQoKCj4gVGhlIG91dHB1dCBpczoKPiAgIAo+IFRyeSBnemlwIGRlY29tcHJlc3Npb24uCj4gVHJ5
IExaTUEgZGVjb21wcmVzc2lvbi4KPiBsem1hX2RlY29tcHJlc3NfZmlsZTogcmVhZCBvbiAvYm9v
dC96SW1hZ2Ugb2YgNjU1MzYgYnl0ZXMgZmFpbGVkCj4ga2VybmVsOiAweGI2YTY4MDA4IGtlcm5l
bF9zaXplOiAweDQ5NGQzMAo+IE1FTU9SWSBSQU5HRVMKPiAwMDAwMDAwMDAwMDAwMDAwLTAwMDAw
MDAwMGZmZmZmZmYgKDApCj4gekltYWdlIGhlYWRlcjogMHgwMTZmMjgxOCAweDAwMDAwMDAwIDB4
MDA0OTRkMzAKPiB6SW1hZ2Ugc2l6ZSAweDQ5NGQzMCwgZmlsZSBzaXplIDB4NDk0ZDMwCj4ga2V4
ZWNfbG9hZDogZW50cnkgPSAweDgwMDAgZmxhZ3MgPSAweDI4MDAwMAo+IG5yX3NlZ21lbnRzID0g
Mgo+IHNlZ21lbnRbMF0uYnVmICAgPSAweGI2YTY4MDA4Cj4gc2VnbWVudFswXS5idWZzeiA9IDB4
NDk0ZDMwCj4gc2VnbWVudFswXS5tZW0gICA9IDB4ODAwMAo+IHNlZ21lbnRbMF0ubWVtc3ogPSAw
eDQ5NTAwMAo+IHNlZ21lbnRbMV0uYnVmICAgPSAweDFmY2YwNjAKPiBzZWdtZW50WzFdLmJ1ZnN6
ID0gMHgyNDViCj4gc2VnbWVudFsxXS5tZW0gICA9IDB4MTZmMjAwMAo+IHNlZ21lbnRbMV0ubWVt
c3ogPSAweDMwMDAKPiAgIAo+IExvb2tpbmcgYXQgdGhlIGRlYnVnLCB0aGUgZnVuY3Rpb24gZ3pk
aXJlY3QgcmV0dXJucyDigJwx4oCdIHdoaWNoIGluZGljYXRlcyB0aGUga2VybmVsIGNvbXByZXNz
aW9uIGlzIG5vdCBvZiBnemlwIGJ1dCBJIGRlZmluaXRlbHkgdXNlIGd6aXAuIEkgYWxzbyB0ZXN0
ZWQgaXQgd2l0aCBMWk1BIGNvbXByZXNzaW9uIGFuZCB1SW1hZ2UgaW5zdGVhZCBvZiB6SW1hZ2Ug
YnV0IGFsbCB3aXRoIHRoZSBzYW1lIG91dGNvbWUuCj4gICAKPiBUbyBiZSBjb21wbGV0ZSwgSSB1
c2UgS2V4ZWMtdG9vbHMgMi4wLjE5IGFuZCB6bGliIDEuMi4xMS4KPiAgIAo+IERpZCBJIGltcGxl
bWVudCBzb21ldGhpbmcgd3Jvbmcgb3IgaG93IGNhbiBJIGRlYnVnIHRoaXMgZnVydGhlcj8KCkkg
ZG9uJ3QgaGF2ZSBhIGFybXY1IGhhcmR3YXJlIGFuZCBteSBhdHRlbXB0IHRvIHNldHVwIGEgcWVt
dSArIGJ1aWxkcm9vdCAKc2V0dXAgZm9yIEFSTXY1ICg5MjZ0KSBsZWFkIHRvIGEgZmFpbHVyZSB0
byBib290IHRoZSBsYXRlc3QgdXBzdHJlYW0ga2VybmVsLgoKSSB3aWxsIHRyeSB0byBmaXggdXAg
dGhlIHNldHVwIGFuZCBjb21lIGJhY2sgd2l0aCBtb3JlIGRldGFpbHMuCkluIHRoZSBtZWFud2hp
bGUgaWYgeW91IGNhbiBzaGFyZSB0aGUgYWJvdmUsIEkgY2FuIGhhdmUgZnVydGhlciBsb29rIGF0
IAp0aGUgc2FtZS4KClRoYW5rcywKQmh1cGVzaAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhl
Ywo=
