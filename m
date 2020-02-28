Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C44811733F8
	for <lists+kexec@lfdr.de>; Fri, 28 Feb 2020 10:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A15/ZDAL8S99ijbyv4utOufuSYY+uLGOltMYFxUN+T0=; b=mmlxEFtPyrkSW8
	pTEq//X7YfaZEnHjH/modazvq/uEqV54vpy3ANqahbDZlQ2kqcUaTm7Tm6eBwkXZI8PlCb32ajnvo
	XEcmfw11MbU6g9lT+QojS6/1VnE1op8QL4DbWGzlHs4NE+FlzxaekjHaKyFbY9NHV7Uso0EkNw4sv
	tGGa0kcjNmGw0xYcvzVGCrdti9DLp5Xo3fR1HcnVgToC5lfbBXFBj9avdZaCbbaqKH0HUirJF9DK2
	7rDByXlZ5MiBX//eBzIzLnaWbtXCD0r08EbY5tZEJa0r5kFZQJUJ7y6aI42C5gXPq+RxM3TrrhCIU
	luyCgGsKFOXwTfp52Sfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7bwA-00052q-Iy; Fri, 28 Feb 2020 09:28:02 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7bw6-00051l-Ms
 for kexec@lists.infradead.org; Fri, 28 Feb 2020 09:28:00 +0000
Received: by mail-il1-x141.google.com with SMTP id f5so2157726ilq.5
 for <kexec@lists.infradead.org>; Fri, 28 Feb 2020 01:27:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Ms6O6aoqXDyCXwxH9N7N5sV8U4w89NRWQpK0LExlfEM=;
 b=FXccaMWnSaG0jMg7H6HCkdbL8p8OOQxMa8SDBhDGVc29je9S4xDCp1C4ZRLKg1d1tl
 6QmP632uEYwDPb09LYXW8k1MCfHcp9ICIcGF7m3HTNTZeDPpsjtwsaAngsO2s4xMFOpe
 d7ou9XgGt1XvXI9XgXeLSwrCFFmXAyKEXTpB54rI2Q0eXn9uUBYHmgpUnGIzFYN40nxD
 SrkpOBVTziW6pXZreHrM5yLP5sgzYsnCjrsI/X7SMIM8deL6GYlNBB8cWf1PtXo3rLzj
 clJPEgmSkSHdCfvLL3Q9YfwHMc6e3CJsoe4LI7Obu0ZHgrIGARHsPqnnYSVpzC7V56H6
 KV6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Ms6O6aoqXDyCXwxH9N7N5sV8U4w89NRWQpK0LExlfEM=;
 b=T72cwG0ptPshz0DChPGuQbj9cl2ZiNcBM2mPdR5W9lrKZ1MYGzGsuQPeOGAbHkpUJq
 AvLN36oNsVWzP9kcNIkzSmnv1Lj3u7ejGrWhf4FWdqh9RYwPDAg00euSMSXe2idVaqb+
 XlpZuY/wM+dw0+LVnRtyBYmNKRB3jPpJ6kemOcl9Z8hUMUfBDrqa4jzF8r+rsMKUq0vd
 VKY/r2rFxxmWaIum/EsMqzVaBXtLJaRllFyL4bpPsd8kSKAQWdz1liBEFDb9qvuwtbo4
 D7bOCM08sYeWDc0VV4rFnk8Zo3r0Gn05ckrbolaafZNe2ZSuL4sBEN1gD4Kn3t9WN/iR
 XT4A==
X-Gm-Message-State: APjAAAXDm6/M3roN7Oc0/IjMSwUG9VjSomg3KfJGLP19jva3N2vYzxR+
 btZqLj4Vjnr+Ka38WstosgzuzeWQbhB/4TxKrA==
X-Google-Smtp-Source: APXvYqyeqpzMT3XGLG6oh8NWwZD6oYsyPecjkgVdVHIkrYBvKU+3D2RpCgNbOpDRNL/DWPUIGvcOkKJEkDKzGNeHCRI=
X-Received: by 2002:a92:d090:: with SMTP id h16mr3732548ilh.78.1582882077652; 
 Fri, 28 Feb 2020 01:27:57 -0800 (PST)
MIME-Version: 1.0
References: <1582869192-9284-1-git-send-email-kernelfans@gmail.com>
 <1582869192-9284-3-git-send-email-kernelfans@gmail.com>
 <2a1906b0-6c53-4ff5-78ea-3254f8224fe4@c-s.fr>
In-Reply-To: <2a1906b0-6c53-4ff5-78ea-3254f8224fe4@c-s.fr>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Fri, 28 Feb 2020 17:27:46 +0800
Message-ID: <CAFgQCTs+zoFOzg5v1dbocSjm3--BMASLSAqSicQdPE6GUy6oGg@mail.gmail.com>
Subject: Re: [PATCH 3/3] pseries/scm: buffer pmem's bound addr in dt for kexec
 kernel
To: Christophe Leroy <christophe.leroy@c-s.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_012758_778340_3780D417 
X-CRM114-Status: GOOD (  22.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
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
 Kexec Mailing List <kexec@lists.infradead.org>,
 Oliver O'Halloran <oohall@gmail.com>, Paul Mackerras <paulus@samba.org>,
 Dan Williams <dan.j.williams@intel.com>, linuxppc-dev@lists.ozlabs.org,
 Hari Bathini <hbathini@linux.ibm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gRnJpLCBGZWIgMjgsIDIwMjAgYXQgMjo1MiBQTSBDaHJpc3RvcGhlIExlcm95CjxjaHJpc3Rv
cGhlLmxlcm95QGMtcy5mcj4gd3JvdGU6Cj4KPgo+Cj4gTGUgMjgvMDIvMjAyMCDDoCAwNjo1Mywg
UGluZ2ZhbiBMaXUgYSDDqWNyaXQgOgo+ID4gQXQgcHJlc2VudCwgcGxwYXJfaGNhbGwoSF9TQ01f
QklORF9NRU0sIC4uLikgdGFrZXMgYSB2ZXJ5IGxvbmcgdGltZSwgc28KPiA+IGlmIGR1bXBpbmcg
dG8gZnNkYXgsIGl0IHdpbGwgdGFrZSBhIHZlcnkgbG9uZyB0aW1lLgo+ID4KPiA+IFRha2UgYSBj
bG9zZXIgbG9vaywgZHVyaW5nIHRoZSBwYXByX3NjbSBpbml0aWFsaXphdGlvbiwgdGhlIG9ubHkK
PiA+IGNvbmZpZ3VyYXRpb24gaXMgdGhyb3VnaCBkcmNfcG1lbV9iaW5kKCktPiBwbHBhcl9oY2Fs
bChIX1NDTV9CSU5EX01FTSwKPiA+IC4uLiksIHdoaWNoIGhlbHBzIHRvIHNldCB1cCB0aGUgYm91
bmQgYWRkcmVzcy4KPiA+Cj4gPiBPbiBwc2VyaWVzLCBmb3Iga2V4ZWMgLWwvLXAga2VybmVsLCB0
aGVyZSBpcyBubyByZXNldCBvZiBoYXJkd2FyZSwgYW5kIHRoaXMKPiA+IHN0ZXAgY2FuIGJlIHN0
ZXBwZWQgYXJvdW5kIHRvIHNhdmUgdGltZXMuICBTbyB0aGUgcG1lbSBib3VuZCBhZGRyZXNzIGNh
biBiZQo+ID4gcGFzc2VkIHRvIHRoZSAybmQga2VybmVsIHRocm91Z2ggYSBkeW5hbWljIGFkZGVk
IHByb3BlcnR5ICJib3VuZC1hZGRyIiBpbgo+ID4gZHQgbm9kZSAnaWJtLHBtZW1vcnknLgo+ID4K
PiA+IFNpZ25lZC1vZmYtYnk6IFBpbmdmYW4gTGl1IDxrZXJuZWxmYW5zQGdtYWlsLmNvbT4KPiA+
IFRvOiBsaW51eHBwYy1kZXZAbGlzdHMub3psYWJzLm9yZwo+ID4gQ2M6IEJlbmphbWluIEhlcnJl
bnNjaG1pZHQgPGJlbmhAa2VybmVsLmNyYXNoaW5nLm9yZz4KPiA+IENjOiBQYXVsIE1hY2tlcnJh
cyA8cGF1bHVzQHNhbWJhLm9yZz4KPiA+IENjOiBNaWNoYWVsIEVsbGVybWFuIDxtcGVAZWxsZXJt
YW4uaWQuYXU+Cj4gPiBDYzogSGFyaSBCYXRoaW5pIDxoYmF0aGluaUBsaW51eC5pYm0uY29tPgo+
ID4gQ2M6IEFuZWVzaCBLdW1hciBLLlYgPGFuZWVzaC5rdW1hckBsaW51eC5pYm0uY29tPgo+ID4g
Q2M6IE9saXZlciBPJ0hhbGxvcmFuIDxvb2hhbGxAZ21haWwuY29tPgo+ID4gQ2M6IERhbiBXaWxs
aWFtcyA8ZGFuLmoud2lsbGlhbXNAaW50ZWwuY29tPgo+ID4gQ2M6IGtleGVjQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiA+IC0tLQo+ID4gbm90ZTogSSBjYW4gbm90IGZpbmQgc3VjaCBhIHBzZXJpZXMg
bWFjaGluZSwgYW5kIG5vdCBmaW5pc2ggaXQgeWV0Lgo+ID4gLS0tCj4gPiAgIGFyY2gvcG93ZXJw
Yy9wbGF0Zm9ybXMvcHNlcmllcy9wYXByX3NjbS5jIHwgMzIgKysrKysrKysrKysrKysrKysrKysr
LS0tLS0tLS0tLQo+ID4gICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKSwgMTAgZGVs
ZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvcG93ZXJwYy9wbGF0Zm9ybXMvcHNl
cmllcy9wYXByX3NjbS5jIGIvYXJjaC9wb3dlcnBjL3BsYXRmb3Jtcy9wc2VyaWVzL3BhcHJfc2Nt
LmMKPiA+IGluZGV4IGMyZWYzMjAuLjU1NWU3NDYgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL3Bvd2Vy
cGMvcGxhdGZvcm1zL3BzZXJpZXMvcGFwcl9zY20uYwo+ID4gKysrIGIvYXJjaC9wb3dlcnBjL3Bs
YXRmb3Jtcy9wc2VyaWVzL3BhcHJfc2NtLmMKPiA+IEBAIC0zODIsNyArMzgyLDcgQEAgc3RhdGlj
IGludCBwYXByX3NjbV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4gICB7
Cj4gPiAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKmRuID0gcGRldi0+ZGV2Lm9mX25vZGU7Cj4g
PiAgICAgICB1MzIgZHJjX2luZGV4LCBtZXRhZGF0YV9zaXplOwo+ID4gLSAgICAgdTY0IGJsb2Nr
cywgYmxvY2tfc2l6ZTsKPiA+ICsgICAgIHU2NCBibG9ja3MsIGJsb2NrX3NpemUsIGJvdW5kX2Fk
ZHIgPSAwOwo+ID4gICAgICAgc3RydWN0IHBhcHJfc2NtX3ByaXYgKnA7Cj4gPiAgICAgICBjb25z
dCBjaGFyICp1dWlkX3N0cjsKPiA+ICAgICAgIHU2NCB1dWlkWzJdOwo+ID4gQEAgLTQzOSwxNyAr
NDM5LDI5IEBAIHN0YXRpYyBpbnQgcGFwcl9zY21fcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiA+ICAgICAgIHAtPm1ldGFkYXRhX3NpemUgPSBtZXRhZGF0YV9zaXplOwo+ID4g
ICAgICAgcC0+cGRldiA9IHBkZXY7Cj4gPgo+ID4gLSAgICAgLyogcmVxdWVzdCB0aGUgaHlwZXJ2
aXNvciB0byBiaW5kIHRoaXMgcmVnaW9uIHRvIHNvbWV3aGVyZSBpbiBtZW1vcnkgKi8KPiA+IC0g
ICAgIHJjID0gZHJjX3BtZW1fYmluZChwKTsKPiA+ICsgICAgIG9mX3Byb3BlcnR5X3JlYWRfdTY0
KGRuLCAiYm91bmQtYWRkciIsICZib3VuZF9hZGRyKTsKPiA+ICsgICAgIGlmIChib3VuZF9hZGRy
KQo+ID4gKyAgICAgICAgICAgICBwLT5ib3VuZF9hZGRyID0gYm91bmRfYWRkcjsKPiA+ICsgICAg
IGVsc2Ugewo+Cj4gQWxsIGxlZ3Mgb2YgYW4gaWYvZWxzZSBtdXN0IGhhdmUgeyB9IHdoZW4gb25l
IGxlZyBuZWVkIHRoZW0sIHNlZSBjb2R5aW5nCj4gc3R5bGUuCk9LLAo+Cj4gPiArICAgICAgICAg
ICAgIHN0cnVjdCBwcm9wZXJ0eSAqcHJvcGVydHk7Cj4gPiArICAgICAgICAgICAgIHU2NCBiaWc7
Cj4gPgo+ID4gLSAgICAgLyogSWYgcGh5cCBzYXlzIGRyYyBtZW1vcnkgc3RpbGwgYm91bmQgdGhl
biBmb3JjZSB1bmJvdW5kIGFuZCByZXRyeSAqLwo+ID4gLSAgICAgaWYgKHJjID09IEhfT1ZFUkxB
UCkKPiA+IC0gICAgICAgICAgICAgcmMgPSBkcmNfcG1lbV9xdWVyeV9uX2JpbmQocCk7Cj4gPiAr
ICAgICAgICAgICAgIC8qIHJlcXVlc3QgdGhlIGh5cGVydmlzb3IgdG8gYmluZCB0aGlzIHJlZ2lv
biB0byBzb21ld2hlcmUgaW4gbWVtb3J5ICovCj4gPiArICAgICAgICAgICAgIHJjID0gZHJjX3Bt
ZW1fYmluZChwKTsKPiA+Cj4gPiAtICAgICBpZiAocmMgIT0gSF9TVUNDRVNTKSB7Cj4gPiAtICAg
ICAgICAgICAgIGRldl9lcnIoJnAtPnBkZXYtPmRldiwgImJpbmQgZXJyOiAlZFxuIiwgcmMpOwo+
ID4gLSAgICAgICAgICAgICByYyA9IC1FTlhJTzsKPiA+IC0gICAgICAgICAgICAgZ290byBlcnI7
Cj4gPiArICAgICAgICAgICAgIC8qIElmIHBoeXAgc2F5cyBkcmMgbWVtb3J5IHN0aWxsIGJvdW5k
IHRoZW4gZm9yY2UgdW5ib3VuZCBhbmQgcmV0cnkgKi8KPiA+ICsgICAgICAgICAgICAgaWYgKHJj
ID09IEhfT1ZFUkxBUCkKPiA+ICsgICAgICAgICAgICAgICAgICAgICByYyA9IGRyY19wbWVtX3F1
ZXJ5X25fYmluZChwKTsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgaWYgKHJjICE9IEhfU1VDQ0VT
Uykgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIoJnAtPnBkZXYtPmRldiwgImJp
bmQgZXJyOiAlZFxuIiwgcmMpOwo+ID4gKyAgICAgICAgICAgICAgICAgICAgIHJjID0gLUVOWElP
Owo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyOwo+ID4gKyAgICAgICAgICAgICB9
Cj4gPiArICAgICAgICAgICAgIGJpZyA9IGNwdV90b19iZTY0KHAtPmJvdW5kX2FkZHIpOwo+ID4g
KyAgICAgICAgICAgICBwcm9wZXJ0eSA9IG5ld19wcm9wZXJ0eSgiYm91bmQtYWRkciIsIHNpemVv
Zih1NjQpLCAmYmlnLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgIE5VTEwpOwo+Cj4gV2h5IHBs
aXR0aW5nIHRoaXMgbGluZSBpbiB0d28gcGFydHMgPyBZb3UgaGF2ZSBsaW5lcyBmYXIgbG9uZ2Vy
IGFib3ZlLgo+IEluIHBvd2VycGMgd2UgYWxsb3cgbGluZXMgOTAgY2hhcnMgbG9uZy4KT0ssIGdv
b2QgdG8ga25vdyBpdC4KClRoYW5rcywKUGluZ2ZhbgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFpbGluZyBsaXN0CmtleGVjQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9r
ZXhlYwo=
