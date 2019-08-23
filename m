Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D07BE9A711
	for <lists+kexec@lfdr.de>; Fri, 23 Aug 2019 07:26:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvvZfyIO/2uy7rJseix6YzNEWsUvMh6kiLR4xawV5Qg=; b=PoGckRPH2pKbGD
	lx/81VItZfLtfvbBFCWLQW2mY8WytVCN3ojkWNK3R6o1ZLNPfgJYDtoubUwxq79WRdtDHsLW23MxL
	yNseUbzgM26BM3dJ0hgFOce4jk+ddp6CGeZRrQOT9j2xMx+qDtxF2ZHIHTXMOFvq0dk5IFPiYYcAC
	0r6vilRGxHcw7rxibES03ZoZtQ3ENBuzVnBNtCCq4wFVDM3XxCzdFEA0hhJ5gLUXIJVa7YBhPYglg
	4O4BMQ1LHzt/tR0ziVWaRgwzboVBGKqfazRllPAKAqxq2bWZJSs174JAgAs2I7mY710m9F8geDvHR
	hIaN2RoTLytPaEO4soag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1261-0004Nx-Th; Fri, 23 Aug 2019 05:26:45 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i125x-0004Ne-O2
 for kexec@lists.infradead.org; Fri, 23 Aug 2019 05:26:43 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 831C73058E0A;
 Fri, 23 Aug 2019 05:26:41 +0000 (UTC)
Received: from localhost.localdomain (ovpn-12-117.pek2.redhat.com
 [10.72.12.117])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EA9D81001B17;
 Fri, 23 Aug 2019 05:26:33 +0000 (UTC)
Subject: Re: [PATCH 2/2] Limit the size of vmcore-dmesg.txt to 2G
To: Simon Horman <horms@verge.net.au>
References: <20190815033756.15587-1-lijiang@redhat.com>
 <20190815033756.15587-3-lijiang@redhat.com>
 <20190822085211.j2y736chwesxga4l@verge.net.au>
From: lijiang <lijiang@redhat.com>
Message-ID: <f9ef57f3-6026-af2e-6a16-25d4fea3d0cb@redhat.com>
Date: Fri, 23 Aug 2019 13:26:30 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190822085211.j2y736chwesxga4l@verge.net.au>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.47]); Fri, 23 Aug 2019 05:26:41 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_222641_804402_DB8AE7BB 
X-CRM114-Status: GOOD (  18.76  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: kasong@redhat.com, piliu@redhat.com, bhsharma@redhat.com,
 kexec@lists.infradead.org, junw99@yahoo.com, bhe@redhat.com, dyoung@redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

5ZyoIDIwMTnlubQwOOaciDIy5pelIDE2OjUyLCBTaW1vbiBIb3JtYW4g5YaZ6YGTOgo+IE9uIFRo
dSwgQXVnIDE1LCAyMDE5IGF0IDExOjM3OjU2QU0gKzA4MDAsIExpYW5ibyBKaWFuZyB3cm90ZToK
Pj4gV2l0aCBzb21lIGNvcnJ1cHRlZCB2bWNvcmUgZmlsZXMsIHRoZSB2bWNvcmUtZG1lc2cudHh0
IGZpbGUgbWF5IGdyb3cKPj4gZm9yZXZlciB0aWxsIHRoZSBrZHVtcCBkaXNrIGJlY29tZXMgZnVs
bCwgYW5kIGFsc28gcHJvYmFibHkgY2F1c2VzCj4+IHRoZSBkaXNrIGVycm9yIG1lc3NhZ2VzIGFz
IGZvbGxvdzoKPj4gLi4uCj4+IHNkIDA6MDowOjA6IFtzZGFdIHRhZyM2IEZBSUxFRCBSZXN1bHQ6
IGhvc3RieXRlPURJRF9CQURfVEFSR0VUIGRyaXZlcmJ5dGU9RFJJVkVSX09LCj4+IHNkIDA6MDow
OjA6IFtzZGFdIHRhZyM2IENEQjogUmVhZCgxMCkgMjggMDAgMDggMDYgNGMgOTggMDAgMDAgMDgg
MDAKPj4gYmxrX3VwZGF0ZV9yZXF1ZXN0OiBJL08gZXJyb3IsIGRldiBzZGEsIHNlY3RvciAxMzQ2
MzA1NTIKPj4gc2QgMDowOjA6MDogW3NkYV0gdGFnIzcgRkFJTEVEIFJlc3VsdDogaG9zdGJ5dGU9
RElEX0JBRF9UQVJHRVQgZHJpdmVyYnl0ZT1EUklWRVJfT0sKPj4gc2QgMDowOjA6MDogW3NkYV0g
dGFnIzcgQ0RCOiBSZWFkKDEwKSAyOCAwMCAwOCAwNiA0YyA5OCAwMCAwMCAwOCAwMAo+PiBibGtf
dXBkYXRlX3JlcXVlc3Q6IEkvTyBlcnJvciwgZGV2IHNkYSwgc2VjdG9yIDEzNDYzMDU1Mgo+PiAu
Li4KPj4KPj4gSWYgdm1jb3JlLWRtZXNnLnR4dCBvY2N1cGllcyB0aGUgd2hvbGUgZGlzaywgdGhl
IHZtY29yZSBjYW4gbm90IGJlCj4+IHNhdmVkLCB0aGlzIGlzIGFsc28gYSBwcm9ibGVtLgo+Pgo+
PiBMZXRzIGxpbWl0IHRoZSBzaXplIG9mIHZtY29yZS1kbWVzZy50eHQgdG8gYXZvaWQgc3VjaCBw
cm9ibGVtcy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTGlhbmJvIEppYW5nIDxsaWppYW5nQHJlZGhh
dC5jb20+Cj4gCj4gVGhhbmtzLCB0aGlzIGxvb2tzIGdvb2QgdG8gbWUuCj4gCj4gUGxlYXNlIHJl
cG9zdCB0aGlzIHBhdGNoIHdpdGggYW4gdXBkYXRlZCB2ZXJzaW9uIG9mIFBhdGNoIDEvMi4KPiAK
Ck9LLCB0aGFuayB5b3UsIFNpbW9uLiBJIHdpbGwgaW1wcm92ZSB0aGVtIGFuZCBwb3N0IGFnYWlu
LgoKPj4gLS0tCj4+ICB2bWNvcmUtZG1lc2cvdm1jb3JlLWRtZXNnLmMgfCAxMCArKysrKysrKysr
Cj4+ICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
dm1jb3JlLWRtZXNnL3ZtY29yZS1kbWVzZy5jIGIvdm1jb3JlLWRtZXNnL3ZtY29yZS1kbWVzZy5j
Cj4+IGluZGV4IGZmMGQ1NDBjOTEzMC4uNWFkYTM1NjY5NzJiIDEwMDY0NAo+PiAtLS0gYS92bWNv
cmUtZG1lc2cvdm1jb3JlLWRtZXNnLmMKPj4gKysrIGIvdm1jb3JlLWRtZXNnL3ZtY29yZS1kbWVz
Zy5jCj4+IEBAIC0xLDggKzEsMTggQEAKPj4gICNpbmNsdWRlIDxlbGZfaW5mby5oPgo+PiAgCj4+
ICsvKiBzdG9sZSB0aGlzIG1hY3JvIGZyb20ga2VybmVsIHByaW50ay5jICovCj4+ICsjZGVmaW5l
IExPR19CVUZfTEVOX01BWCAodWludDMyX3QpKDEgPDwgMzEpCj4+ICsKPj4gIHN0YXRpYyB2b2lk
IHdyaXRlX3RvX3N0ZG91dChjaGFyICpidWYsIHVuc2lnbmVkIGludCBucikKPj4gIHsKPj4gIAlz
c2l6ZV90IHJldDsKPj4gKwlzdGF0aWMgdWludDMyX3Qgbl9ieXRlcyA9IDA7Cj4+ICsKPj4gKwlu
X2J5dGVzICs9IG5yOwo+PiArCWlmIChuX2J5dGVzID4gTE9HX0JVRl9MRU5fTUFYKSB7Cj4+ICsJ
CWZwcmludGYoc3RkZXJyLCAiVGhlIHZtY29yZS1kbWVzZy50eHQgb3ZlciAyRyBpbiBzaXplIGlz
IG5vdCBzdXBwb3J0ZWQuXG4iKTsKPj4gKwkJZXhpdCg1NSk7Cj4+ICsJfQo+PiAgCj4+ICAJcmV0
ID0gd3JpdGUoU1RET1VUX0ZJTEVOTywgYnVmLCBucik7Cj4+ICAJaWYgKHJldCAhPSBucikgewo+
PiAtLSAKPj4gMi4xNy4xCj4+Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4+IGtleGVjIG1haWxpbmcgbGlzdAo+PiBrZXhlY0BsaXN0cy5pbmZy
YWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
a2V4ZWMKPj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
