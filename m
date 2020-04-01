Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C2519AD5C
	for <lists+kexec@lfdr.de>; Wed,  1 Apr 2020 16:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MzRppTvfqpWcYv5QpaA4F8qO+SLtbeLMeN7w4LYhuz0=; b=DRpUlb5Vs/rikHiQHZvMySU6C
	MrqUZ4CRHpfc2lsoJU5VMGKkV4UnoM1BaBOuwn/SQz56J5LOxRZucdELM7/O/3Nc5KOQS+QkPtc9U
	dcdJ8rAvT5j4cxVHfqVRKsb02ehB0mQr88liwIj0cBHCaabEkOf4nq1BoLVLLefun/rLDKvCcw/qB
	pqil+wQqhtxKgYxd9qav3SPKgvcALZbKuYNsLmgksSre/a43opq3x3lGMyijyYugtz472BlfqMQdA
	1tA1mGsq0Yrqdm8NIYjmdR+Z1R7YIi7dPzHUrWEccE80+ThYOql1GG9XtU0SxRTsm7QseP26UliB6
	rcoa2N/pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJe0E-0003H8-TQ; Wed, 01 Apr 2020 14:05:58 +0000
Received: from smtp-fw-6001.amazon.com ([52.95.48.154])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJe0B-0003GC-9x
 for kexec@lists.infradead.org; Wed, 01 Apr 2020 14:05:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1585749956; x=1617285956;
 h=to:cc:references:from:message-id:date:mime-version:
 in-reply-to:content-transfer-encoding:subject;
 bh=RS68hlA7tIDr6NCVSHti8FSKgVwvhl6gl9WZAUYHu9g=;
 b=KkcpuNx8MA8bF/KSp2zx7CgWw9L55PDHmdw4NG1tmnkI+5ckihMd4KGS
 uRtyZ2CGUKr/QSd3OhYmAzoU8Rb2jrgFp8d0qBFyGEw0sTKpAC9xX69LK
 BFnhIghjUTYbOB6uwPpyjRghE1SriQmZVKOYYTl4Ka45Ymh+hroWtaQoM Y=;
IronPort-SDR: d/aezmzN5yiUp2Rc1htc+keT+EbKFlBPS8LOL+BG8Xfyh+1KJuMWVzMEGKdx8znVb99cEJUw6e
 jC0o/vr7aFfg==
X-IronPort-AV: E=Sophos;i="5.72,331,1580774400"; d="scan'208";a="25099853"
Subject: Re: [PATCH 2/3] kexec: Introduce --load-live-update for xen
Received: from iad12-co-svc-p1-lb1-vlan3.amazon.com (HELO
 email-inbound-relay-2b-c7131dcf.us-west-2.amazon.com) ([10.43.8.6])
 by smtp-border-fw-out-6001.iad6.amazon.com with ESMTP;
 01 Apr 2020 14:05:34 +0000
Received: from EX13MTAUEE002.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2b-c7131dcf.us-west-2.amazon.com (Postfix) with ESMTPS
 id 8CC2DA263A; Wed,  1 Apr 2020 14:05:33 +0000 (UTC)
Received: from EX13D08UEE004.ant.amazon.com (10.43.62.182) by
 EX13MTAUEE002.ant.amazon.com (10.43.62.24) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 1 Apr 2020 14:05:33 +0000
Received: from EX13MTAUEE002.ant.amazon.com (10.43.62.24) by
 EX13D08UEE004.ant.amazon.com (10.43.62.182) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Wed, 1 Apr 2020 14:05:32 +0000
Received: from u908889d5e8f057.ant.amazon.com (10.1.213.20) by
 mail-relay.amazon.com (10.43.62.224) with Microsoft SMTP Server (TLS) id
 15.0.1497.2 via Frontend Transport; Wed, 1 Apr 2020 14:05:32 +0000
To: Simon Horman <horms@verge.net.au>, Varad Gautam <vrd@amazon.de>
References: <1581066033-25120-1-git-send-email-vrd@amazon.de>
 <1581066033-25120-2-git-send-email-vrd@amazon.de>
 <20200401124738.GE29376@vergenet.net>
From: <vrd@amazon.com>
Message-ID: <ea36820e-514e-8a8c-ad2a-387525b28b5f@amazon.com>
Date: Wed, 1 Apr 2020 16:05:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200401124738.GE29376@vergenet.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_070555_483727_7DA902C0 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -2.2 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.95.48.154 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kexec@lists.infradead.org, David Woodhouse <dwmw@amazon.co.uk>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gNC8xLzIwIDI6NDcgUE0sIFNpbW9uIEhvcm1hbiB3cm90ZToKPiBDQVVUSU9OOiBUaGlzIGVt
YWlsIG9yaWdpbmF0ZWQgZnJvbSBvdXRzaWRlIG9mIHRoZSBvcmdhbml6YXRpb24uIERvIG5vdCBj
bGljayBsaW5rcyBvciBvcGVuIGF0dGFjaG1lbnRzIHVubGVzcyB5b3UgY2FuIGNvbmZpcm0gdGhl
IHNlbmRlciBhbmQga25vdyB0aGUgY29udGVudCBpcyBzYWZlLgo+Cj4KPgo+IE9uIEZyaSwgRmVi
IDA3LCAyMDIwIGF0IDEwOjAwOjMyQU0gKzAxMDAsIFZhcmFkIEdhdXRhbSB3cm90ZToKPj4gWGVu
IGlzIGludGVuZGVkIHRvIGV4cG9zZSBhIEtFWEVDX1RZUEVfTElWRV9VUERBVEUgb3BlcmF0aW9u
IHdoaWNoCj4+IGltcGxpZXMgYSBzdGF0ZWZ1bC1rZXhlYyBpbnRvIGEgbmV3IHhlbiBpbWFnZSAt
IG9yIGEgImxpdmUgdXBkYXRlIi4KPj4gTWFrZSBrZXhlYy10b29scyBjYXBhYmxlIG9mIHRyaWdn
ZXJpbmcgYSBsaXZlIHVwZGF0ZS4KPj4KPj4gRm9yIGEgbXVsdGlib290MiB4ZW4gaW1hZ2UsIHRo
aXMgd2lsbDoKPj4gLSBsb2FkIGEgeGVuIEVsZiBpbnRvIGludG8gS0VYRUNfUkFOR0VfTUFfWEVO
Cj4+IC0gbG9hZCBwdXJnYXRvcnkgYW5kIG1vZHVsZXMgaW50byBLRVhFQ19SQU5HRV9NQV9MSVZF
VVBEQVRFCj4+IC0gYXBwZW5kIEVsZiBjbWRsaW5lIHdpdGggIiBsaXZldXBkYXRlPTxzaXplPkA8
YWRkcj4KPj4KPj4gU2lnbmVkLW9mZi1ieTogVmFyYWQgR2F1dGFtIDx2cmRAYW1hem9uLmRlPgo+
PiBDQzogRGF2aWQgV29vZGhvdXNlIDxkd213QGFtYXpvbi5jby51az4KPiBTb3JyeSBmb3IgdGhl
IGxvbmcgZGVsYXkuCj4KPiBUaGlzIHBhdGNoIGRvZXMgbm90IGFwcGVhciB0byBjb21waWxlLgo+
Cj4gZ2NjIC1XYWxsIC1XZXh0cmEgLVdwb2ludGVyLWFyaXRoIC1Xd3JpdGUtc3RyaW5ncyAtV2Zv
cm1hdCAtTzIgLWZvbWl0LWZyYW1lLXBvaW50ZXIgLXBpcGUgLWZuby1zdHJpY3QtYWxpYXNpbmcg
LVdhbGwgLVdzdHJpY3QtcHJvdG90eXBlcyAtSS4vaW5jbHVkZSAtSS4vdXRpbF9saWIvaW5jbHVk
ZSAtSWluY2x1ZGUvICAtSS4va2V4ZWMvYXJjaC94ODZfNjQvaW5jbHVkZSAgLWMgLU1EIC1vIGtl
eGVjL2tleGVjLm8ga2V4ZWMva2V4ZWMuYwo+IGtleGVjL2tleGVjLmM6IEluIGZ1bmN0aW9uIOKA
mG15X3NodXRkb3du4oCZOgo+IGtleGVjL2tleGVjLmM6ODg5OjM6IHdhcm5pbmc6IGluaXRpYWxp
emF0aW9uIGRpc2NhcmRzIOKAmGNvbnN04oCZIHF1YWxpZmllciBmcm9tIHBvaW50ZXIgdGFyZ2V0
IHR5cGUgWy1XZGlzY2FyZGVkLXF1YWxpZmllcnNdCj4gICAgICJzaHV0ZG93biIsCj4gICAgIF5+
fn5+fn5+fn4KPiBrZXhlYy9rZXhlYy5jOjg5MDozOiB3YXJuaW5nOiBpbml0aWFsaXphdGlvbiBk
aXNjYXJkcyDigJhjb25zdOKAmSBxdWFsaWZpZXIgZnJvbSBwb2ludGVyIHRhcmdldCB0eXBlIFst
V2Rpc2NhcmRlZC1xdWFsaWZpZXJzXQo+ICAgICAiLXIiLAo+ICAgICBefn5+Cj4ga2V4ZWMva2V4
ZWMuYzo4OTE6Mzogd2FybmluZzogaW5pdGlhbGl6YXRpb24gZGlzY2FyZHMg4oCYY29uc3TigJkg
cXVhbGlmaWVyIGZyb20gcG9pbnRlciB0YXJnZXQgdHlwZSBbLVdkaXNjYXJkZWQtcXVhbGlmaWVy
c10KPiAgICAgIm5vdyIsCj4gICAgIF5+fn5+Cj4ga2V4ZWMva2V4ZWMuYzogSW4gZnVuY3Rpb24g
4oCYY21kbGluZV9hZGRfbGl2ZXVwZGF0ZeKAmToKPiBrZXhlYy9rZXhlYy5jOjExODc6Mjogd2Fy
bmluZzogaW1wbGljaXQgZGVjbGFyYXRpb24gb2YgZnVuY3Rpb24g4oCYeGVuX2dldF9rZXhlY19y
YW5nZeKAmTsgZGlkIHlvdSBtZWFuIOKAmHhlbl9rZXhlY19zdGF0dXPigJk/IFstV2ltcGxpY2l0
LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+ICAgIHhlbl9nZXRfa2V4ZWNfcmFuZ2UoS0VYRUNfUkFO
R0VfTUFfTElWRVVQREFURSwgJmx1X3N0YXJ0LCAmbHVfZW5kKTsKPiAgICBefn5+fn5+fn5+fn5+
fn5+fn5+Cj4gICAgeGVuX2tleGVjX3N0YXR1cwo+IGtleGVjL2tleGVjLmM6MTE4NzoyMjogZXJy
b3I6IOKAmEtFWEVDX1JBTkdFX01BX0xJVkVVUERBVEXigJkgdW5kZWNsYXJlZCAoZmlyc3QgdXNl
IGluIHRoaXMgZnVuY3Rpb24pCj4gICAgeGVuX2dldF9rZXhlY19yYW5nZShLRVhFQ19SQU5HRV9N
QV9MSVZFVVBEQVRFLCAmbHVfc3RhcnQsICZsdV9lbmQpOwo+ICAgICAgICAgICAgICAgICAgICAg
ICAgXn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fgo+IGtleGVjL2tleGVjLmM6MTE4NzoyMjogbm90
ZTogZWFjaCB1bmRlY2xhcmVkIGlkZW50aWZpZXIgaXMgcmVwb3J0ZWQgb25seSBvbmNlIGZvciBl
YWNoIGZ1bmN0aW9uIGl0IGFwcGVhcnMgaW4KPiBrZXhlYy9rZXhlYy5jOiBJbiBmdW5jdGlvbiDi
gJhtYWlu4oCZOgo+IGtleGVjL2tleGVjLmM6MTQzMzozNzogZXJyb3I6IOKAmEtFWEVDX0xJVkVf
VVBEQVRF4oCZIHVuZGVjbGFyZWQgKGZpcnN0IHVzZSBpbiB0aGlzIGZ1bmN0aW9uKTsgZGlkIHlv
dSBtZWFuIOKAmEtFWEVDX0xPQURFRF9QQVRI4oCZPwo+ICAgICAgICAgICAgICBLRVhFQ19QUkVT
RVJWRV9DT05URVhUIDogS0VYRUNfTElWRV9VUERBVEU7Cj4gICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBefn5+fn5+fn5+fn5+fn5+fgo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgS0VYRUNfTE9BREVEX1BBVEgKCgpJIHNlZSwgdGhlIHN5bWJvbHMg
SSBhZGRlZCBhcmUgaGlkZGVuIGJlaGluZCBIQVZFX0xJQlhFTkNUUkwsIGFuZCBJJ20gCmFibGUg
dG8gY29tcGlsZSB3aXRoIC0td2l0aC14ZW49eWVzIHdpdGhvdXQgdGhpcyBoYXBwZW5pbmc6IApo
dHRwczovL3Bhc3RlLm9wZW5zdXNlLm9yZy82NzczOTU4OSAuCgpJJ2xsIHJld29yayB0aGlzIHRv
IHdvcmsgb24gYm90aCB4ZW4gYW5kIG5vbi14ZW4gc2V0dXBzIGFuZCBzZW5kIGFnYWluLgoKClZh
cmFkCgo+IGtleGVjL2tleGVjLmM6MTM3NDoxNjogd2FybmluZzogdGhpcyBzdGF0ZW1lbnQgbWF5
IGZhbGwgdGhyb3VnaCBbLVdpbXBsaWNpdC1mYWxsdGhyb3VnaD1dCj4gICAgICBrZXhlY19kZWJ1
ZyA9IDE7Cj4gICAgICB+fn5+fn5+fn5+fn5efn4KPiBrZXhlYy9rZXhlYy5jOjEzNzU6Mzogbm90
ZTogaGVyZQo+ICAgICBjYXNlIE9QVF9OT0lGRE9XTjoKPiAgICAgXn5+fgo+IG1ha2U6ICoqKiBb
TWFrZWZpbGU6MTE0OiBrZXhlYy9rZXhlYy5vXSBFcnJvciAxCj4KCgoKCkFtYXpvbiBEZXZlbG9w
bWVudCBDZW50ZXIgR2VybWFueSBHbWJICktyYXVzZW5zdHIuIDM4CjEwMTE3IEJlcmxpbgpHZXNj
aGFlZnRzZnVlaHJ1bmc6IENocmlzdGlhbiBTY2hsYWVnZXIsIEpvbmF0aGFuIFdlaXNzCkVpbmdl
dHJhZ2VuIGFtIEFtdHNnZXJpY2h0IENoYXJsb3R0ZW5idXJnIHVudGVyIEhSQiAxNDkxNzMgQgpT
aXR6OiBCZXJsaW4KVXN0LUlEOiBERSAyODkgMjM3IDg3OQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8va2V4ZWMK
