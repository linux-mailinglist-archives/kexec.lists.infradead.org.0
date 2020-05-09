Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48FEE1CBDD1
	for <lists+kexec@lfdr.de>; Sat,  9 May 2020 07:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=igcYGdnOuGIafBLqT013gxSJliQQa4p5hknHgo9Fo1I=; b=dBvxY20t44zEqm
	R2eBlWSdpuqCEQENOjR0j6IlSPibe4aAbirFpFjsnNBic9Rcngn5jW1JbSt/MsRlNVQNdTrPGyvXg
	s9+VoU861pM4Ra1UswENSUe4VYPRc3R5/0b89oLNniZPCQrhqQrQLesuMPCCo09/0vk2HGkY9dwtJ
	WUqm7odJ1NMW3T2YQFg+bq6oqjgrQi3jdhJRVL9gtHV8lzi0V+REeQTdqOEe+bV87FLa0XB51UNf1
	bdyDRjWJz788ME8nTZcCGI/Z6gDEPHzSeDZp6O0N7V+WZfE74E2oFytEmbb77sjzOk1yQBetwrnMi
	i1mETO5gM//GXuETtbyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXIEA-0008Ip-Ft; Sat, 09 May 2020 05:40:46 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXIE6-0008IJ-HA
 for kexec@lists.infradead.org; Sat, 09 May 2020 05:40:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589002839;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wLITgYcnji+lI1/U32+qXSFD10JDWBM8uaMukB/H0iE=;
 b=BMBuKorf8KO7G9tVP1lytZJ3ohSLmi5zruYPf1wElrCDfRNZ6+CeiN7mSdcMG+t7AW/QXy
 G9Zi022TWqN+i8cZTdN+TJdhQWeVfeeMeH0oEn7LFM2qA3ihqyW3Zv+3ZLC47Yl7EfhHmz
 qnJKylNisDOWoCyxXqZ9tCacAuLPJ9s=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-425-Q4fFabeVPmmnGn9KFcT-MA-1; Sat, 09 May 2020 01:40:37 -0400
X-MC-Unique: Q4fFabeVPmmnGn9KFcT-MA-1
Received: by mail-wr1-f71.google.com with SMTP id d16so1913507wrv.18
 for <kexec@lists.infradead.org>; Fri, 08 May 2020 22:40:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=mTjszWW/EefMrw7aIGeEPuK1Cqsav+nLkGOW2S21ZN0=;
 b=q0qE2IrjxBv4rrbJ1hTqJsvpMOJO4p+bsMgyPBm1PJEG9jpgJUDKY0l549X1xQP2eQ
 DAPit+5fVb4/EvKBaWhW5OY8hvBf7RlcU0+Iuz3CclTfrPcxyhPxK0KOucQSCkXFgW9K
 0lxbQXhvIgtPnabmA52CIAOIEWUMe/x8UQEzr9i4wosOg4wvqwx7R3zYSNLPzNqS5CiC
 BAZ58fGsAvyomRx+O5VbopNKmwfyNXcSL50AYi9RbsjWyC04+e3WZ/j0gGPl2PJYj2EU
 FWi/TTwElvtQ4U1FXpBp9f4V6H7zbyh8fY/HL+JwIjbDL7+ELMWwSkqjnafLeb68rVJp
 1uUw==
X-Gm-Message-State: AGi0PuYj8kLKFYuraQ+RtddW140DcSNRurRWd+WBoaq0uz6yUIKxa6Bn
 60q97/rWj7Oyyw7Rtj/l8Eqh9x3O03wHy1FQTqphmZVgTjwf3Q2NfBEXfuXjnWweWh2JLdKEEuR
 yL8MapG0Npe98ehuB+MIc
X-Received: by 2002:a5d:52ce:: with SMTP id r14mr7021350wrv.334.1589002835889; 
 Fri, 08 May 2020 22:40:35 -0700 (PDT)
X-Google-Smtp-Source: APiQypLh46b+OJHiK+BmOVxHBKBIBg126/s6UEDmzeKxMWF5zY7CcNlENVRlnP1JVfzUUAXHjN/rxA==
X-Received: by 2002:a5d:52ce:: with SMTP id r14mr7021307wrv.334.1589002835393; 
 Fri, 08 May 2020 22:40:35 -0700 (PDT)
Received: from ?IPv6:2a01:598:b901:53f:9037:7517:2497:29c?
 ([2a01:598:b901:53f:9037:7517:2497:29c])
 by smtp.gmail.com with ESMTPSA id z6sm437028wrq.1.2020.05.08.22.40.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 08 May 2020 22:40:34 -0700 (PDT)
From: David Hildenbrand <david@redhat.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v4 1/4] device-dax: Don't leak kernel memory to user space
 after unloading kmem
Date: Sat, 9 May 2020 07:40:33 +0200
Message-Id: <B72EB609-44DC-4133-820C-9BEA95CA012D@redhat.com>
References: <20200508165306.7cd806f7e451c5c9bc2a40ac@linux-foundation.org>
In-Reply-To: <20200508165306.7cd806f7e451c5c9bc2a40ac@linux-foundation.org>
To: Andrew Morton <akpm@linux-foundation.org>
X-Mailer: iPhone Mail (17D50)
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_224042_693862_6F423551 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Dave Jiang <dave.jiang@intel.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, linux-nvdimm@lists.01.org,
 Vishal Verma <vishal.l.verma@intel.com>, David Hildenbrand <david@redhat.com>,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-mm@kvack.org,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Cgo+IEFtIDA5LjA1LjIwMjAgdW0gMDE6NTMgc2NocmllYiBBbmRyZXcgTW9ydG9uIDxha3BtQGxp
bnV4LWZvdW5kYXRpb24ub3JnPjoKPiAKPiDvu79PbiBGcmksICA4IE1heSAyMDIwIDEwOjQyOjE0
ICswMjAwIERhdmlkIEhpbGRlbmJyYW5kIDxkYXZpZEByZWRoYXQuY29tPiB3cm90ZToKPiAKPj4g
QXNzdW1lIHdlIGhhdmUga21lbSBjb25maWd1cmVkIGFuZCBsb2FkZWQ6Cj4+ICBbcm9vdEBsb2Nh
bGhvc3Qgfl0jIGNhdCAvcHJvYy9pb21lbQo+PiAgLi4uCj4+ICAxNDAwMDAwMDAtMzNmZmZmZmZm
IDogUGVyc2lzdGVudCBNZW1vcnkkCj4+ICAgIDE0MDAwMDAwMC0xNDgxZmZmZmYgOiBuYW1lc3Bh
Y2UwLjAKPj4gICAgMTUwMDAwMDAwLTMzZmZmZmZmZiA6IGRheDAuMAo+PiAgICAgIDE1MDAwMDAw
MC0zM2ZmZmZmZmYgOiBTeXN0ZW0gUkFNCj4+IAo+PiBBc3N1bWUgd2UgdHJ5IHRvIHVubG9hZCBr
bWVtLiBUaGlzIGZvcmNlLXVubG9hZGluZyB3aWxsIHdvcmssIGV2ZW4gaWYKPj4gbWVtb3J5IGNh
bm5vdCBnZXQgcmVtb3ZlZCBmcm9tIHRoZSBzeXN0ZW0uCj4+ICBbcm9vdEBsb2NhbGhvc3Qgfl0j
IHJtbW9kIGttZW0KPj4gIFsgICA4Ni4zODAyMjhdIHJlbW92aW5nIG1lbW9yeSBmYWlscywgYmVj
YXVzZSBtZW1vcnkgWzB4MDAwMDAwMDE1MDAwMDAwMC0weDAwMDAwMDAxNTdmZmZmZmZdIGlzIG9u
bGluZWQKPj4gIC4uLgo+PiAgWyAgIDg2LjQzMTIyNV0ga21lbSBkYXgwLjA6IERBWCByZWdpb24g
W21lbSAweDE1MDAwMDAwMC0weDMzZmZmZmZmZl0gY2Fubm90IGJlIGhvdHJlbW92ZWQgdW50aWwg
dGhlIG5leHQgcmVib290Cj4+IAo+PiBOb3csIHdlIGNhbiByZWNvbmZpZ3VyZSB0aGUgbmFtZXNw
YWNlOgo+PiAgW3Jvb3RAbG9jYWxob3N0IH5dIyBuZGN0bCBjcmVhdGUtbmFtZXNwYWNlIC0tZm9y
Y2UgLS1yZWNvbmZpZz1uYW1lc3BhY2UwLjAgLS1tb2RlPWRldmRheAo+PiAgWyAgMTMxLjQwOTM1
MV0gbmRfcG1lbSBuYW1lc3BhY2UwLjA6IGNvdWxkIG5vdCByZXNlcnZlIHJlZ2lvbiBbbWVtIDB4
MTQwMDAwMDAwLTB4MzNmZmZmZmZmXWRheAo+PiAgWyAgMTMxLjQxMDE0N10gbmRfcG1lbTogcHJv
YmUgb2YgbmFtZXNwYWNlMC4wIGZhaWxlZCB3aXRoIGVycm9yIC0xNm5hbWVzcGFjZTAuMCAtLW1v
ZGU9ZGV2ZGF4Cj4+ICAuLi4KPj4gCj4+IFRoaXMgZmFpbHMgYXMgZXhwZWN0ZWQgZHVlIHRvIHRo
ZSBidXN5IG1lbW9yeSByZXNvdXJjZSwgYW5kIHRoZSBtZW1vcnkKPj4gY2Fubm90IGJlIHVzZWQu
IEhvd2V2ZXIsIHRoZSBkYXgwLjAgZGV2aWNlIGlzIHJlbW92ZWQsIGFuZCBhbG9uZyBpdHMgbmFt
ZS4KPj4gCj4+IFRoZSBuYW1lIG9mIHRoZSBtZW1vcnkgcmVzb3VyY2Ugbm93IHBvaW50cyBhdCBm
cmVlZCBtZW1vcnkgKG5hbWUgb2YgdGhlCj4+IGRldmljZSkuCj4+ICBbcm9vdEBsb2NhbGhvc3Qg
fl0jIGNhdCAvcHJvYy9pb21lbQo+PiAgLi4uCj4+ICAxNDAwMDAwMDAtMzNmZmZmZmZmIDogUGVy
c2lzdGVudCBNZW1vcnkKPj4gICAgMTQwMDAwMDAwLTE0ODFmZmZmZiA6IG5hbWVzcGFjZTAuMAo+
PiAgICAxNTAwMDAwMDAtMzNmZmZmZmZmIDog77+9X++/vV43X++/ve+/vS9f77+977+9d1Lvv73v
v71XUe+/ve+/ve+/vV7vv73vv73vv70gLi4uCj4+ICAgIDE1MDAwMDAwMC0zM2ZmZmZmZmYgOiBT
eXN0ZW0gUkFNCj4+IAo+PiBXZSBoYXZlIHRvIG1ha2Ugc3VyZSB0byBkdXBsaWNhdGUgdGhlIHN0
cmluZy4gV2hpbGUgYXQgaXQsIHJlbW92ZSB0aGUKPj4gc3VwZXJmbHVvdXMgc2V0dGluZyBvZiB0
aGUgbmFtZSBhbmQgZml4dXAgYSBzdGFsZSBjb21tZW50Lgo+PiAKPj4gRml4ZXM6IDlmOTYwZGE3
MmIyNSAoImRldmljZS1kYXg6ICJIb3RyZW1vdmUiIHBlcnNpc3RlbnQgbWVtb3J5IHRoYXQgaXMg
dXNlZCBsaWtlIG5vcm1hbCBSQU0iKQo+PiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZyAjIHY1
LjMKPiAKPiBobS4KPiAKPiBJcyB0aGlzIHJlYWxseSAtc3RhYmxlIG1hdGVyaWFsPyAgVGhlc2Ug
YXJlIGFsbCBwcml2aWxlZ2VkIG9wZXJhdGlvbnMsCj4gSSBleHBlY3Q/CgpZZXMsIG15IHRob3Vn
aHQgd2FzIHJhdGhlciB0aGF0IGFuIGFkbWluIGNvdWxkIGJyaW5nIHRoZSBzeXN0ZW0gaW50byBz
dWNoIGEgc3RhdGUgKGJ5IG1pc3Rha2U/KS4gTGV04oCYcyBzZWUgaWYgc29tZWJvZHkgaGFzIGEg
c3VnZ2VzdGlvbi4KCkkgZ3Vlc3MgaWYgd2Ugd2VyZSByZWFsbHkgdW5sdWNreSwgd2UgY291bGQg
YWNjZXNzIGludmFsaWQgbWVtb3J5IGFuZCB0cmlnZ2VyIGEgQlVHIChlLmcuLCBwYWdlIGF0IHRo
ZSBlbmQgb2YgbWVtb3J5IGFuZCBkb2VzIG5vdCBjb250YWluIGEgMCBieXRlKS4KCj4gCj4gQXNz
dW1pbmcgInllcyIsIEkndmUgcXVldWVkIHRoaXMgc2VwYXJhdGVseSwgc3RhZ2VkIGZvciA1Ljct
cmNYLiAgSSdsbAo+IHJlZG8gcGF0Y2hlcyAyLTQgYXMgYSB0aHJlZS1wYXRjaCBzZXJpZXMgZm9y
IDUuOC1yYzEuCgpNYWtlIHNlbnNlLCBsZXTigJhzIHdhaXQgZm9yIHJldmlldyBmZWVkYmFjaywg
dGhhbmtzIQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4ZWMK
