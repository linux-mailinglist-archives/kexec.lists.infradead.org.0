Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA5A173152
	for <lists+kexec@lfdr.de>; Fri, 28 Feb 2020 07:48:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3EgTmWT+dTAghxf7pp/VdExE43BA0G01rdBoHvbQXQ4=; b=e/1oyJY0IVMZGSrBU8814cAYa
	PLe5dv1U6igpBQGzoyD5LcyeNGXEaDpcwFCJmBw5isc3y331Li6w2iMB++wab+DpNB46Utx8cyFl8
	Q/ZQLtLhSAufpxv8L1WGy5ji3WPFtPbfX4k2ZrM4nqpvF0KFsIQDZBjYd7ftOX4m2V0/26+sX8Wkk
	LfBxTW0+o1ZdNexmhvmMa9sOU0D4L8KGVa2m4Gaq+0baB2eKzJQMiYMkrUBui2fP2ExygusGY8LWS
	SSmAGwH/Rtgc5UofXiiK4nuqdisjRCBrVzduCYQoXVm4zARQw/LSGVT2gDGO3p8eYbKY+yCtEiX+L
	Xe+sy3/9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ZRi-0005S3-3p; Fri, 28 Feb 2020 06:48:26 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ZRe-0005Rb-H8
 for kexec@lists.infradead.org; Fri, 28 Feb 2020 06:48:24 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 48TKqP4kR7z9tyP0;
 Fri, 28 Feb 2020 07:48:01 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=ejCtIt1p; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id 6jR401TOlRIA; Fri, 28 Feb 2020 07:48:01 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 48TKqP3BC8z9tyNy;
 Fri, 28 Feb 2020 07:48:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1582872481; bh=Cohq9MVvU03XQUeGGqMuaEGuP4J4N2k2xbofXFWhiRw=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ejCtIt1pd0JhHvXUzC8ZeqbHtAetHvxWh/WRA+/9D97XkCsZNfkoa5oSlOPs4ad/Z
 oNQbAQr7i6AfI0th7MHnXfnLXuZB26+Smf/qM+RVTIc0d5uN6K4h3rLubVFQUtwSgT
 SrEUoF1y1EqtDX5qO3hBiLDlNFbdc6uyV9ewJl8M=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 467B48B884;
 Fri, 28 Feb 2020 07:48:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id fft1qqTPHigN; Fri, 28 Feb 2020 07:48:02 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id ABD0F8B768;
 Fri, 28 Feb 2020 07:48:01 +0100 (CET)
Subject: Re: [PATCH 1/3] powerpc/of: split out new_property() for reusing
To: Pingfan Liu <kernelfans@gmail.com>, linuxppc-dev@lists.ozlabs.org
References: <1582869192-9284-1-git-send-email-kernelfans@gmail.com>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <f0f00d96-80a9-dd40-e1ed-204ad1cb954a@c-s.fr>
Date: Fri, 28 Feb 2020 07:47:59 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1582869192-9284-1-git-send-email-kernelfans@gmail.com>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_224822_865526_D2FA2B77 
X-CRM114-Status: GOOD (  19.51  )
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

CgpMZSAyOC8wMi8yMDIwIMOgIDA2OjUzLCBQaW5nZmFuIExpdSBhIMOpY3JpdMKgOgo+IFNpbmNl
IG5ld19wcm9wZXJ0eSgpIGlzIHVzZWQgaW4gc2V2ZXJhbCBjYWxsaW5nIHNpdGVzLCBzcGxpdHRp
bmcgaXQgb3V0IGZvcgo+IHJldXNpbmcuCj4gCj4gVG8gZWFzZSB0aGUgcmV2aWV3LCBhbHRob3Vn
aCB0aGUgc3BsaXQgb3V0IHBhcnQgaGFzIGNvZGluZyBzdHlsZSBpc3N1ZSwKPiBrZWVwaW5nIGl0
IHVudG91Y2hlZCBhbmQgZml4ZWQgaW4gbmV4dCBwYXRjaC4KClRoZSBtb3ZlZCBmdW5jdGlvbiBm
aXRzIGluIG9uZSBzY3JlZW4uIEkgZG9uJ3QgdGhpbmsgaXQgaXMgd29ydGggCnNwbGl0dGluZyBv
dXQgZm9yIGNvZGluZyBzdHlsZSB0aGF0IGFwcGxpZXMgb24gdGhlIG5ldyBsaW5lcyBvbmx5LiBZ
b3UgCmNhbiBzcXVhc2ggdGhlIHR3byBwYXRjaGVzLCBpdCB3aWxsIHN0aWxsIGJlIGVhc3kgdG8g
cmV2aWV3LgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBQaW5nZmFuIExpdSA8a2VybmVsZmFuc0BnbWFp
bC5jb20+Cj4gVG86IGxpbnV4cHBjLWRldkBsaXN0cy5vemxhYnMub3JnCj4gQ2M6IEJlbmphbWlu
IEhlcnJlbnNjaG1pZHQgPGJlbmhAa2VybmVsLmNyYXNoaW5nLm9yZz4KPiBDYzogUGF1bCBNYWNr
ZXJyYXMgPHBhdWx1c0BzYW1iYS5vcmc+Cj4gQ2M6IE1pY2hhZWwgRWxsZXJtYW4gPG1wZUBlbGxl
cm1hbi5pZC5hdT4KPiBDYzogSGFyaSBCYXRoaW5pIDxoYmF0aGluaUBsaW51eC5pYm0uY29tPgo+
IENjOiBBbmVlc2ggS3VtYXIgSy5WIDxhbmVlc2gua3VtYXJAbGludXguaWJtLmNvbT4KPiBDYzog
T2xpdmVyIE8nSGFsbG9yYW4gPG9vaGFsbEBnbWFpbC5jb20+Cj4gQ2M6IERhbiBXaWxsaWFtcyA8
ZGFuLmoud2lsbGlhbXNAaW50ZWwuY29tPgo+IENjOiBrZXhlY0BsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4gLS0tCj4gICBhcmNoL3Bvd2VycGMvaW5jbHVkZS9hc20vcHJvbS5oICAgICAgICAgICB8ICAy
ICsrCj4gICBhcmNoL3Bvd2VycGMva2VybmVsL01ha2VmaWxlICAgICAgICAgICAgICB8ICAyICst
Cj4gICBhcmNoL3Bvd2VycGMva2VybmVsL29mX3Byb3BlcnR5LmMgICAgICAgICB8IDMyICsrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysKPiAgIGFyY2gvcG93ZXJwYy9tbS9kcm1lbS5jICAg
ICAgICAgICAgICAgICAgIHwgMjYgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+ICAgYXJjaC9w
b3dlcnBjL3BsYXRmb3Jtcy9wc2VyaWVzL3JlY29uZmlnLmMgfCAyNiAtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tCj4gICA1IGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDUzIGRlbGV0
aW9ucygtKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvcG93ZXJwYy9rZXJuZWwvb2ZfcHJv
cGVydHkuYwo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL3Bvd2VycGMvaW5jbHVkZS9hc20vcHJvbS5o
IGIvYXJjaC9wb3dlcnBjL2luY2x1ZGUvYXNtL3Byb20uaAo+IGluZGV4IDk0ZTNmZDUuLjAyZjdi
MWIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9wb3dlcnBjL2luY2x1ZGUvYXNtL3Byb20uaAo+ICsrKyBi
L2FyY2gvcG93ZXJwYy9pbmNsdWRlL2FzbS9wcm9tLmgKPiBAQCAtOTAsNiArOTAsOCBAQCBzdHJ1
Y3Qgb2ZfZHJjX2luZm8gewo+ICAgZXh0ZXJuIGludCBvZl9yZWFkX2RyY19pbmZvX2NlbGwoc3Ry
dWN0IHByb3BlcnR5ICoqcHJvcCwKPiAgIAkJCWNvbnN0IF9fYmUzMiAqKmN1cnZhbCwgc3RydWN0
IG9mX2RyY19pbmZvICpkYXRhKTsKPiAgIAo+ICtleHRlcm4gc3RydWN0IHByb3BlcnR5ICpuZXdf
cHJvcGVydHkoY29uc3QgY2hhciAqbmFtZSwgY29uc3QgaW50IGxlbmd0aCwKPiArCQljb25zdCB1
bnNpZ25lZCBjaGFyICp2YWx1ZSwgc3RydWN0IHByb3BlcnR5ICpsYXN0KTsKCkRvbid0IGFkZCB1
c2VsZXNzICdleHRlcm4nIGtleXdvcmQuCgo+ICAgCj4gICAvKgo+ICAgICogVGhlcmUgYXJlIHR3
byBtZXRob2RzIGZvciB0ZWxsaW5nIGZpcm13YXJlIHdoYXQgb3VyIGNhcGFiaWxpdGllcyBhcmUu
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvcG93ZXJwYy9rZXJuZWwvTWFrZWZpbGUgYi9hcmNoL3Bvd2Vy
cGMva2VybmVsL01ha2VmaWxlCj4gaW5kZXggMTU3YjAxNC4uMjMzNzVmZCAxMDA2NDQKPiAtLS0g
YS9hcmNoL3Bvd2VycGMva2VybmVsL01ha2VmaWxlCj4gKysrIGIvYXJjaC9wb3dlcnBjL2tlcm5l
bC9NYWtlZmlsZQo+IEBAIC00Nyw3ICs0Nyw3IEBAIG9iai15CQkJCTo9IGNwdXRhYmxlLm8gcHRy
YWNlLm8gc3lzY2FsbHMubyBcCj4gICAJCQkJICAgc2lnbmFsLm8gc3lzZnMubyBjYWNoZWluZm8u
byB0aW1lLm8gXAo+ICAgCQkJCSAgIHByb20ubyB0cmFwcy5vIHNldHVwLWNvbW1vbi5vIFwKPiAg
IAkJCQkgICB1ZGJnLm8gbWlzYy5vIGlvLm8gbWlzY18kKEJJVFMpLm8gXAo+IC0JCQkJICAgb2Zf
cGxhdGZvcm0ubyBwcm9tX3BhcnNlLm8KPiArCQkJCSAgIG9mX3BsYXRmb3JtLm8gcHJvbV9wYXJz
ZS5vIG9mX3Byb3BlcnR5Lm8KPiAgIG9iai0kKENPTkZJR19QUEM2NCkJCSs9IHNldHVwXzY0Lm8g
c3lzX3BwYzMyLm8gXAo+ICAgCQkJCSAgIHNpZ25hbF82NC5vIHB0cmFjZTMyLm8gXAo+ICAgCQkJ
CSAgIHBhY2EubyBudnJhbV82NC5vIGZpcm13YXJlLm8gbm90ZS5vCj4gZGlmZiAtLWdpdCBhL2Fy
Y2gvcG93ZXJwYy9rZXJuZWwvb2ZfcHJvcGVydHkuYyBiL2FyY2gvcG93ZXJwYy9rZXJuZWwvb2Zf
cHJvcGVydHkuYwo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMC4uZTU2Yzgz
Mgo+IC0tLSAvZGV2L251bGwKPiArKysgYi9hcmNoL3Bvd2VycGMva2VybmVsL29mX3Byb3BlcnR5
LmMKPiBAQCAtMCwwICsxLDMyIEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwt
Mi4wLW9ubHkKPiArI2luY2x1ZGUgPGxpbnV4L29mLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9zdHJp
bmcuaD4KPiArI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgo+ICsjaW5jbHVkZSA8bGludXgvc2xh
Yi5oPgo+ICsKPiArc3RydWN0IHByb3BlcnR5ICpuZXdfcHJvcGVydHkoY29uc3QgY2hhciAqbmFt
ZSwgY29uc3QgaW50IGxlbmd0aCwKPiArCQkJCSAgICAgY29uc3QgdW5zaWduZWQgY2hhciAqdmFs
dWUsIHN0cnVjdCBwcm9wZXJ0eSAqbGFzdCkKPiArewo+ICsJc3RydWN0IHByb3BlcnR5ICpuZXcg
PSBremFsbG9jKHNpemVvZigqbmV3KSwgR0ZQX0tFUk5FTCk7Cj4gKwo+ICsJaWYgKCFuZXcpCj4g
KwkJcmV0dXJuIE5VTEw7Cj4gKwo+ICsJaWYgKCEobmV3LT5uYW1lID0ga3N0cmR1cChuYW1lLCBH
RlBfS0VSTkVMKSkpCj4gKwkJZ290byBjbGVhbnVwOwo+ICsJaWYgKCEobmV3LT52YWx1ZSA9IGtt
YWxsb2MobGVuZ3RoICsgMSwgR0ZQX0tFUk5FTCkpKQo+ICsJCWdvdG8gY2xlYW51cDsKPiArCj4g
KwltZW1jcHkobmV3LT52YWx1ZSwgdmFsdWUsIGxlbmd0aCk7Cj4gKwkqKCgoY2hhciAqKW5ldy0+
dmFsdWUpICsgbGVuZ3RoKSA9IDA7Cj4gKwluZXctPmxlbmd0aCA9IGxlbmd0aDsKPiArCW5ldy0+
bmV4dCA9IGxhc3Q7Cj4gKwlyZXR1cm4gbmV3Owo+ICsKPiArY2xlYW51cDoKPiArCWtmcmVlKG5l
dy0+bmFtZSk7Cj4gKwlrZnJlZShuZXctPnZhbHVlKTsKPiArCWtmcmVlKG5ldyk7Cj4gKwlyZXR1
cm4gTlVMTDsKPiArfQo+ICsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9wb3dlcnBjL21tL2RybWVtLmMg
Yi9hcmNoL3Bvd2VycGMvbW0vZHJtZW0uYwo+IGluZGV4IDg1YjA4OGEuLjg4ODIyN2UgMTAwNjQ0
Cj4gLS0tIGEvYXJjaC9wb3dlcnBjL21tL2RybWVtLmMKPiArKysgYi9hcmNoL3Bvd2VycGMvbW0v
ZHJtZW0uYwo+IEBAIC05OSwzMiArOTksNiBAQCBzdGF0aWMgdm9pZCBpbml0X2RyY29uZl92Ml9j
ZWxsKHN0cnVjdCBvZl9kcmNvbmZfY2VsbF92MiAqZHJfY2VsbCwKPiAgIAo+ICAgZXh0ZXJuIGlu
dCB0ZXN0X2hvdHBsdWc7Cj4gICAKPiAtc3RhdGljIHN0cnVjdCBwcm9wZXJ0eSAqbmV3X3Byb3Bl
cnR5KGNvbnN0IGNoYXIgKm5hbWUsIGNvbnN0IGludCBsZW5ndGgsCj4gLQkJCQkgICAgIGNvbnN0
IHVuc2lnbmVkIGNoYXIgKnZhbHVlLCBzdHJ1Y3QgcHJvcGVydHkgKmxhc3QpCj4gLXsKPiAtCXN0
cnVjdCBwcm9wZXJ0eSAqbmV3ID0ga3phbGxvYyhzaXplb2YoKm5ldyksIEdGUF9LRVJORUwpOwo+
IC0KPiAtCWlmICghbmV3KQo+IC0JCXJldHVybiBOVUxMOwo+IC0KPiAtCWlmICghKG5ldy0+bmFt
ZSA9IGtzdHJkdXAobmFtZSwgR0ZQX0tFUk5FTCkpKQo+IC0JCWdvdG8gY2xlYW51cDsKPiAtCWlm
ICghKG5ldy0+dmFsdWUgPSBrbWFsbG9jKGxlbmd0aCArIDEsIEdGUF9LRVJORUwpKSkKPiAtCQln
b3RvIGNsZWFudXA7Cj4gLQo+IC0JbWVtY3B5KG5ldy0+dmFsdWUsIHZhbHVlLCBsZW5ndGgpOwo+
IC0JKigoKGNoYXIgKiluZXctPnZhbHVlKSArIGxlbmd0aCkgPSAwOwo+IC0JbmV3LT5sZW5ndGgg
PSBsZW5ndGg7Cj4gLQluZXctPm5leHQgPSBsYXN0Owo+IC0JcmV0dXJuIG5ldzsKPiAtCj4gLWNs
ZWFudXA6Cj4gLQlrZnJlZShuZXctPm5hbWUpOwo+IC0Ja2ZyZWUobmV3LT52YWx1ZSk7Cj4gLQlr
ZnJlZShuZXcpOwo+IC0JcmV0dXJuIE5VTEw7Cj4gLX0KPiAtCj4gICBzdGF0aWMgaW50IGRybWVt
X3VwZGF0ZV9kdF92MihzdHJ1Y3QgZGV2aWNlX25vZGUgKm1lbW9yeSwKPiAgIAkJCSAgICAgIHN0
cnVjdCBwcm9wZXJ0eSAqcHJvcCkKPiAgIHsKPiBkaWZmIC0tZ2l0IGEvYXJjaC9wb3dlcnBjL3Bs
YXRmb3Jtcy9wc2VyaWVzL3JlY29uZmlnLmMgYi9hcmNoL3Bvd2VycGMvcGxhdGZvcm1zL3BzZXJp
ZXMvcmVjb25maWcuYwo+IGluZGV4IDdmNzM2OWYuLjhlNWEyYmEgMTAwNjQ0Cj4gLS0tIGEvYXJj
aC9wb3dlcnBjL3BsYXRmb3Jtcy9wc2VyaWVzL3JlY29uZmlnLmMKPiArKysgYi9hcmNoL3Bvd2Vy
cGMvcGxhdGZvcm1zL3BzZXJpZXMvcmVjb25maWcuYwo+IEBAIC0xNjUsMzIgKzE2NSw2IEBAIHN0
YXRpYyBjaGFyICogcGFyc2VfbmV4dF9wcm9wZXJ0eShjaGFyICpidWYsIGNoYXIgKmVuZCwgY2hh
ciAqKm5hbWUsIGludCAqbGVuZ3RoCj4gICAJcmV0dXJuIHRtcDsKPiAgIH0KPiAgIAo+IC1zdGF0
aWMgc3RydWN0IHByb3BlcnR5ICpuZXdfcHJvcGVydHkoY29uc3QgY2hhciAqbmFtZSwgY29uc3Qg
aW50IGxlbmd0aCwKPiAtCQkJCSAgICAgY29uc3QgdW5zaWduZWQgY2hhciAqdmFsdWUsIHN0cnVj
dCBwcm9wZXJ0eSAqbGFzdCkKPiAtewo+IC0Jc3RydWN0IHByb3BlcnR5ICpuZXcgPSBremFsbG9j
KHNpemVvZigqbmV3KSwgR0ZQX0tFUk5FTCk7Cj4gLQo+IC0JaWYgKCFuZXcpCj4gLQkJcmV0dXJu
IE5VTEw7Cj4gLQo+IC0JaWYgKCEobmV3LT5uYW1lID0ga3N0cmR1cChuYW1lLCBHRlBfS0VSTkVM
KSkpCj4gLQkJZ290byBjbGVhbnVwOwo+IC0JaWYgKCEobmV3LT52YWx1ZSA9IGttYWxsb2MobGVu
Z3RoICsgMSwgR0ZQX0tFUk5FTCkpKQo+IC0JCWdvdG8gY2xlYW51cDsKPiAtCj4gLQltZW1jcHko
bmV3LT52YWx1ZSwgdmFsdWUsIGxlbmd0aCk7Cj4gLQkqKCgoY2hhciAqKW5ldy0+dmFsdWUpICsg
bGVuZ3RoKSA9IDA7Cj4gLQluZXctPmxlbmd0aCA9IGxlbmd0aDsKPiAtCW5ldy0+bmV4dCA9IGxh
c3Q7Cj4gLQlyZXR1cm4gbmV3Owo+IC0KPiAtY2xlYW51cDoKPiAtCWtmcmVlKG5ldy0+bmFtZSk7
Cj4gLQlrZnJlZShuZXctPnZhbHVlKTsKPiAtCWtmcmVlKG5ldyk7Cj4gLQlyZXR1cm4gTlVMTDsK
PiAtfQo+IC0KPiAgIHN0YXRpYyBpbnQgZG9fYWRkX25vZGUoY2hhciAqYnVmLCBzaXplX3QgYnVm
c2l6ZSkKPiAgIHsKPiAgIAljaGFyICpwYXRoLCAqZW5kLCAqbmFtZTsKPiAKCkNocmlzdG9waGUK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1h
aWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
