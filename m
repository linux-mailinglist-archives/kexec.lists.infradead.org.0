Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 859AF173163
	for <lists+kexec@lfdr.de>; Fri, 28 Feb 2020 07:52:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Yz0q1UMbRxDtwhWUi4quK6kwiLvfLzQoJvADi48LRmU=; b=Y2ZGrpSI0R1LxoKN957ec4GcX
	K/4S9BP17S4dkSXEOxflyrtK8JLOZOmH+DJf5JvChJ06jWrcYkgJnLoM4wH/fUCgIN+ID22vt9JQC
	twlIHBSLzEy+DpurjoPCuECkEs2ava/uS/mMBoC6igq65WL8FQVqdmE51i0aEcYyJavfKqjkoQZqy
	lSXFMXe163LJZGsSw20/HfdJc5z81gAQCGil5riOXF82dzJZf6iO9D9uHzo/tVKCNrPpfbSABl0k7
	g7skOpJSfQ7MMnevEBw7RKVI/EI1069KyzJByfXBB4E4VFY6QQHkLtI7XE33t6ZI2kCCrb6G12/T0
	3QDxTlYJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ZVy-00078a-El; Fri, 28 Feb 2020 06:52:50 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ZVv-00078B-Cf
 for kexec@lists.infradead.org; Fri, 28 Feb 2020 06:52:49 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48TKwd3Xwmz9tycW;
 Fri, 28 Feb 2020 07:52:33 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=ITnazzNh; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id hdB8N4xYqrbW; Fri, 28 Feb 2020 07:52:33 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48TKwd2GYwz9tycV;
 Fri, 28 Feb 2020 07:52:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1582872753; bh=iqvY8w8mWBSH0zGSJW6dyV+rNHUP0owMHiFxNYYDMdY=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ITnazzNhKtdgZvtcDqlc2zFKIR1cv9gq1HQnRbCzFGj2IfRjGzVOS934kr1S8ban1
 mbbcwmF6LCqur7T871gRupBI8NCqxIWbyy4x66/GJ7+zRUWUTUc1rPf17+b91Ss/oa
 7FeCU+9X/MjB70fin7ExXf/QqkwtEo02U6s0pZeQ=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 263F28B885;
 Fri, 28 Feb 2020 07:52:34 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id MmXm-6F6sl9C; Fri, 28 Feb 2020 07:52:34 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 92E098B768;
 Fri, 28 Feb 2020 07:52:33 +0100 (CET)
Subject: Re: [PATCH 3/3] pseries/scm: buffer pmem's bound addr in dt for kexec
 kernel
To: Pingfan Liu <kernelfans@gmail.com>, linuxppc-dev@lists.ozlabs.org
References: <1582869192-9284-1-git-send-email-kernelfans@gmail.com>
 <1582869192-9284-3-git-send-email-kernelfans@gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <2a1906b0-6c53-4ff5-78ea-3254f8224fe4@c-s.fr>
Date: Fri, 28 Feb 2020 07:52:30 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1582869192-9284-3-git-send-email-kernelfans@gmail.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_225247_724208_588D50D4 
X-CRM114-Status: GOOD (  21.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "Aneesh Kumar K . V" <aneesh.kumar@linux.ibm.com>,
 kexec@lists.infradead.org, Paul Mackerras <paulus@samba.org>,
 Oliver O'Halloran <oohall@gmail.com>, Dan Williams <dan.j.williams@intel.com>,
 Hari Bathini <hbathini@linux.ibm.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CgpMZSAyOC8wMi8yMDIwIMOgIDA2OjUzLCBQaW5nZmFuIExpdSBhIMOpY3JpdMKgOgo+IEF0IHBy
ZXNlbnQsIHBscGFyX2hjYWxsKEhfU0NNX0JJTkRfTUVNLCAuLi4pIHRha2VzIGEgdmVyeSBsb25n
IHRpbWUsIHNvCj4gaWYgZHVtcGluZyB0byBmc2RheCwgaXQgd2lsbCB0YWtlIGEgdmVyeSBsb25n
IHRpbWUuCj4gCj4gVGFrZSBhIGNsb3NlciBsb29rLCBkdXJpbmcgdGhlIHBhcHJfc2NtIGluaXRp
YWxpemF0aW9uLCB0aGUgb25seQo+IGNvbmZpZ3VyYXRpb24gaXMgdGhyb3VnaCBkcmNfcG1lbV9i
aW5kKCktPiBwbHBhcl9oY2FsbChIX1NDTV9CSU5EX01FTSwKPiAuLi4pLCB3aGljaCBoZWxwcyB0
byBzZXQgdXAgdGhlIGJvdW5kIGFkZHJlc3MuCj4gCj4gT24gcHNlcmllcywgZm9yIGtleGVjIC1s
Ly1wIGtlcm5lbCwgdGhlcmUgaXMgbm8gcmVzZXQgb2YgaGFyZHdhcmUsIGFuZCB0aGlzCj4gc3Rl
cCBjYW4gYmUgc3RlcHBlZCBhcm91bmQgdG8gc2F2ZSB0aW1lcy4gIFNvIHRoZSBwbWVtIGJvdW5k
IGFkZHJlc3MgY2FuIGJlCj4gcGFzc2VkIHRvIHRoZSAybmQga2VybmVsIHRocm91Z2ggYSBkeW5h
bWljIGFkZGVkIHByb3BlcnR5ICJib3VuZC1hZGRyIiBpbgo+IGR0IG5vZGUgJ2libSxwbWVtb3J5
Jy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBQaW5nZmFuIExpdSA8a2VybmVsZmFuc0BnbWFpbC5jb20+
Cj4gVG86IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3JnCj4gQ2M6IEJlbmphbWluIEhlcnJl
bnNjaG1pZHQgPGJlbmhAa2VybmVsLmNyYXNoaW5nLm9yZz4KPiBDYzogUGF1bCBNYWNrZXJyYXMg
PHBhdWx1c0BzYW1iYS5vcmc+Cj4gQ2M6IE1pY2hhZWwgRWxsZXJtYW4gPG1wZUBlbGxlcm1hbi5p
ZC5hdT4KPiBDYzogSGFyaSBCYXRoaW5pIDxoYmF0aGluaUBsaW51eC5pYm0uY29tPgo+IENjOiBB
bmVlc2ggS3VtYXIgSy5WIDxhbmVlc2gua3VtYXJAbGludXguaWJtLmNvbT4KPiBDYzogT2xpdmVy
IE8nSGFsbG9yYW4gPG9vaGFsbEBnbWFpbC5jb20+Cj4gQ2M6IERhbiBXaWxsaWFtcyA8ZGFuLmou
d2lsbGlhbXNAaW50ZWwuY29tPgo+IENjOiBrZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gLS0t
Cj4gbm90ZTogSSBjYW4gbm90IGZpbmQgc3VjaCBhIHBzZXJpZXMgbWFjaGluZSwgYW5kIG5vdCBm
aW5pc2ggaXQgeWV0Lgo+IC0tLQo+ICAgYXJjaC9wb3dlcnBjL3BsYXRmb3Jtcy9wc2VyaWVzL3Bh
cHJfc2NtLmMgfCAzMiArKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tCj4gICAxIGZpbGUg
Y2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTAgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdp
dCBhL2FyY2gvcG93ZXJwYy9wbGF0Zm9ybXMvcHNlcmllcy9wYXByX3NjbS5jIGIvYXJjaC9wb3dl
cnBjL3BsYXRmb3Jtcy9wc2VyaWVzL3BhcHJfc2NtLmMKPiBpbmRleCBjMmVmMzIwLi41NTVlNzQ2
IDEwMDY0NAo+IC0tLSBhL2FyY2gvcG93ZXJwYy9wbGF0Zm9ybXMvcHNlcmllcy9wYXByX3NjbS5j
Cj4gKysrIGIvYXJjaC9wb3dlcnBjL3BsYXRmb3Jtcy9wc2VyaWVzL3BhcHJfc2NtLmMKPiBAQCAt
MzgyLDcgKzM4Miw3IEBAIHN0YXRpYyBpbnQgcGFwcl9zY21fcHJvYmUoc3RydWN0IHBsYXRmb3Jt
X2RldmljZSAqcGRldikKPiAgIHsKPiAgIAlzdHJ1Y3QgZGV2aWNlX25vZGUgKmRuID0gcGRldi0+
ZGV2Lm9mX25vZGU7Cj4gICAJdTMyIGRyY19pbmRleCwgbWV0YWRhdGFfc2l6ZTsKPiAtCXU2NCBi
bG9ja3MsIGJsb2NrX3NpemU7Cj4gKwl1NjQgYmxvY2tzLCBibG9ja19zaXplLCBib3VuZF9hZGRy
ID0gMDsKPiAgIAlzdHJ1Y3QgcGFwcl9zY21fcHJpdiAqcDsKPiAgIAljb25zdCBjaGFyICp1dWlk
X3N0cjsKPiAgIAl1NjQgdXVpZFsyXTsKPiBAQCAtNDM5LDE3ICs0MzksMjkgQEAgc3RhdGljIGlu
dCBwYXByX3NjbV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCXAtPm1l
dGFkYXRhX3NpemUgPSBtZXRhZGF0YV9zaXplOwo+ICAgCXAtPnBkZXYgPSBwZGV2Owo+ICAgCj4g
LQkvKiByZXF1ZXN0IHRoZSBoeXBlcnZpc29yIHRvIGJpbmQgdGhpcyByZWdpb24gdG8gc29tZXdo
ZXJlIGluIG1lbW9yeSAqLwo+IC0JcmMgPSBkcmNfcG1lbV9iaW5kKHApOwo+ICsJb2ZfcHJvcGVy
dHlfcmVhZF91NjQoZG4sICJib3VuZC1hZGRyIiwgJmJvdW5kX2FkZHIpOwo+ICsJaWYgKGJvdW5k
X2FkZHIpCj4gKwkJcC0+Ym91bmRfYWRkciA9IGJvdW5kX2FkZHI7Cj4gKwllbHNlIHsKCkFsbCBs
ZWdzIG9mIGFuIGlmL2Vsc2UgbXVzdCBoYXZlIHsgfSB3aGVuIG9uZSBsZWcgbmVlZCB0aGVtLCBz
ZWUgY29keWluZyAKc3R5bGUuCgo+ICsJCXN0cnVjdCBwcm9wZXJ0eSAqcHJvcGVydHk7Cj4gKwkJ
dTY0IGJpZzsKPiAgIAo+IC0JLyogSWYgcGh5cCBzYXlzIGRyYyBtZW1vcnkgc3RpbGwgYm91bmQg
dGhlbiBmb3JjZSB1bmJvdW5kIGFuZCByZXRyeSAqLwo+IC0JaWYgKHJjID09IEhfT1ZFUkxBUCkK
PiAtCQlyYyA9IGRyY19wbWVtX3F1ZXJ5X25fYmluZChwKTsKPiArCQkvKiByZXF1ZXN0IHRoZSBo
eXBlcnZpc29yIHRvIGJpbmQgdGhpcyByZWdpb24gdG8gc29tZXdoZXJlIGluIG1lbW9yeSAqLwo+
ICsJCXJjID0gZHJjX3BtZW1fYmluZChwKTsKPiAgIAo+IC0JaWYgKHJjICE9IEhfU1VDQ0VTUykg
ewo+IC0JCWRldl9lcnIoJnAtPnBkZXYtPmRldiwgImJpbmQgZXJyOiAlZFxuIiwgcmMpOwo+IC0J
CXJjID0gLUVOWElPOwo+IC0JCWdvdG8gZXJyOwo+ICsJCS8qIElmIHBoeXAgc2F5cyBkcmMgbWVt
b3J5IHN0aWxsIGJvdW5kIHRoZW4gZm9yY2UgdW5ib3VuZCBhbmQgcmV0cnkgKi8KPiArCQlpZiAo
cmMgPT0gSF9PVkVSTEFQKQo+ICsJCQlyYyA9IGRyY19wbWVtX3F1ZXJ5X25fYmluZChwKTsKPiAr
Cj4gKwkJaWYgKHJjICE9IEhfU1VDQ0VTUykgewo+ICsJCQlkZXZfZXJyKCZwLT5wZGV2LT5kZXYs
ICJiaW5kIGVycjogJWRcbiIsIHJjKTsKPiArCQkJcmMgPSAtRU5YSU87Cj4gKwkJCWdvdG8gZXJy
Owo+ICsJCX0KPiArCQliaWcgPSBjcHVfdG9fYmU2NChwLT5ib3VuZF9hZGRyKTsKPiArCQlwcm9w
ZXJ0eSA9IG5ld19wcm9wZXJ0eSgiYm91bmQtYWRkciIsIHNpemVvZih1NjQpLCAmYmlnLAo+ICsJ
CQlOVUxMKTsKCldoeSBwbGl0dGluZyB0aGlzIGxpbmUgaW4gdHdvIHBhcnRzID8gWW91IGhhdmUg
bGluZXMgZmFyIGxvbmdlciBhYm92ZS4KSW4gcG93ZXJwYyB3ZSBhbGxvdyBsaW5lcyA5MCBjaGFy
cyBsb25nLgoKPiArCQlvZl9hZGRfcHJvcGVydHkoZG4sIHByb3BlcnR5KTsKPiAgIAl9Cj4gICAK
PiAgIAkvKiBzZXR1cCB0aGUgcmVzb3VyY2UgZm9yIHRoZSBuZXdseSBib3VuZCByYW5nZSAqLwo+
IAoKQ2hyaXN0b3BoZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
