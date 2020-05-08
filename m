Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9743F1CBB6E
	for <lists+kexec@lfdr.de>; Sat,  9 May 2020 01:53:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FCcf3iUDTWbJIQYjZjBx1IANK4tzUmbSo1M3UqMQXoI=; b=KvQ7MYBMAEHSif
	r092iImTRtdekS+ceVfL89bXOkvVygpTxHHHJPjqZPMFNakM2JdbLkIw0hNnm0Jxc7+56lTxiOBFE
	yWj+y82ykqjxyHJa0LbrvAtAHF4RaZW974YIZA7GUmXb1oo/XvznAbTWCRZEWPZ/1PlRBwxYjF7Jr
	diJUNkfIYIgqVgfUBq+sLG7unqLQiGFKPPNNMDYBuCq8AZHYNdo/8RPy3Nm8niE1izEhG/p3A9/OK
	UPhufe+dhFYwtQliMO3W2Y6DQZDXodcyt3avOy4Th2y7XODDSOBNhf2K96RqToMNoAsWITsvIKwwk
	GKnUNRkvwrZ0ynvCay0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXCnr-0002nw-W7; Fri, 08 May 2020 23:53:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXCnl-0002nG-E5
 for kexec@lists.infradead.org; Fri, 08 May 2020 23:53:10 +0000
Received: from localhost.localdomain (c-73-231-172-41.hsd1.ca.comcast.net
 [73.231.172.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C36D12063A;
 Fri,  8 May 2020 23:53:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588981987;
 bh=HhHKaurLAmb7NjsgrxbGjxSSVFmDRRfuuN9UCDjB39o=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=NlxsLycULu/0pDE5VncKMqsY68TvDzrBX4Z64itAzdFVs23jjGQe08PfomP/NtWT8
 t+PlAdQE7wuMV/9rpzTnihUcJMRtJqlsdArVibUT/u4A0ZhILXtPYgryyu3m8JvFgO
 cvEh5TrYedonuRC3JSEcG71eqRoSLBbbgIM2fD/M=
Date: Fri, 8 May 2020 16:53:06 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v4 1/4] device-dax: Don't leak kernel memory to user
 space after unloading kmem
Message-Id: <20200508165306.7cd806f7e451c5c9bc2a40ac@linux-foundation.org>
In-Reply-To: <20200508084217.9160-2-david@redhat.com>
References: <20200508084217.9160-1-david@redhat.com>
 <20200508084217.9160-2-david@redhat.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_165309_492854_6DF5ABCD 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Dave Jiang <dave.jiang@intel.com>,
 Pavel Tatashin <pasha.tatashin@soleen.com>, linux-nvdimm@lists.01.org,
 Vishal Verma <vishal.l.verma@intel.com>, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org, linux-mm@kvack.org,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

T24gRnJpLCAgOCBNYXkgMjAyMCAxMDo0MjoxNCArMDIwMCBEYXZpZCBIaWxkZW5icmFuZCA8ZGF2
aWRAcmVkaGF0LmNvbT4gd3JvdGU6Cgo+IEFzc3VtZSB3ZSBoYXZlIGttZW0gY29uZmlndXJlZCBh
bmQgbG9hZGVkOgo+ICAgW3Jvb3RAbG9jYWxob3N0IH5dIyBjYXQgL3Byb2MvaW9tZW0KPiAgIC4u
Lgo+ICAgMTQwMDAwMDAwLTMzZmZmZmZmZiA6IFBlcnNpc3RlbnQgTWVtb3J5JAo+ICAgICAxNDAw
MDAwMDAtMTQ4MWZmZmZmIDogbmFtZXNwYWNlMC4wCj4gICAgIDE1MDAwMDAwMC0zM2ZmZmZmZmYg
OiBkYXgwLjAKPiAgICAgICAxNTAwMDAwMDAtMzNmZmZmZmZmIDogU3lzdGVtIFJBTQo+IAo+IEFz
c3VtZSB3ZSB0cnkgdG8gdW5sb2FkIGttZW0uIFRoaXMgZm9yY2UtdW5sb2FkaW5nIHdpbGwgd29y
aywgZXZlbiBpZgo+IG1lbW9yeSBjYW5ub3QgZ2V0IHJlbW92ZWQgZnJvbSB0aGUgc3lzdGVtLgo+
ICAgW3Jvb3RAbG9jYWxob3N0IH5dIyBybW1vZCBrbWVtCj4gICBbICAgODYuMzgwMjI4XSByZW1v
dmluZyBtZW1vcnkgZmFpbHMsIGJlY2F1c2UgbWVtb3J5IFsweDAwMDAwMDAxNTAwMDAwMDAtMHgw
MDAwMDAwMTU3ZmZmZmZmXSBpcyBvbmxpbmVkCj4gICAuLi4KPiAgIFsgICA4Ni40MzEyMjVdIGtt
ZW0gZGF4MC4wOiBEQVggcmVnaW9uIFttZW0gMHgxNTAwMDAwMDAtMHgzM2ZmZmZmZmZdIGNhbm5v
dCBiZSBob3RyZW1vdmVkIHVudGlsIHRoZSBuZXh0IHJlYm9vdAo+IAo+IE5vdywgd2UgY2FuIHJl
Y29uZmlndXJlIHRoZSBuYW1lc3BhY2U6Cj4gICBbcm9vdEBsb2NhbGhvc3Qgfl0jIG5kY3RsIGNy
ZWF0ZS1uYW1lc3BhY2UgLS1mb3JjZSAtLXJlY29uZmlnPW5hbWVzcGFjZTAuMCAtLW1vZGU9ZGV2
ZGF4Cj4gICBbICAxMzEuNDA5MzUxXSBuZF9wbWVtIG5hbWVzcGFjZTAuMDogY291bGQgbm90IHJl
c2VydmUgcmVnaW9uIFttZW0gMHgxNDAwMDAwMDAtMHgzM2ZmZmZmZmZdZGF4Cj4gICBbICAxMzEu
NDEwMTQ3XSBuZF9wbWVtOiBwcm9iZSBvZiBuYW1lc3BhY2UwLjAgZmFpbGVkIHdpdGggZXJyb3Ig
LTE2bmFtZXNwYWNlMC4wIC0tbW9kZT1kZXZkYXgKPiAgIC4uLgo+IAo+IFRoaXMgZmFpbHMgYXMg
ZXhwZWN0ZWQgZHVlIHRvIHRoZSBidXN5IG1lbW9yeSByZXNvdXJjZSwgYW5kIHRoZSBtZW1vcnkK
PiBjYW5ub3QgYmUgdXNlZC4gSG93ZXZlciwgdGhlIGRheDAuMCBkZXZpY2UgaXMgcmVtb3ZlZCwg
YW5kIGFsb25nIGl0cyBuYW1lLgo+IAo+IFRoZSBuYW1lIG9mIHRoZSBtZW1vcnkgcmVzb3VyY2Ug
bm93IHBvaW50cyBhdCBmcmVlZCBtZW1vcnkgKG5hbWUgb2YgdGhlCj4gZGV2aWNlKS4KPiAgIFty
b290QGxvY2FsaG9zdCB+XSMgY2F0IC9wcm9jL2lvbWVtCj4gICAuLi4KPiAgIDE0MDAwMDAwMC0z
M2ZmZmZmZmYgOiBQZXJzaXN0ZW50IE1lbW9yeQo+ICAgICAxNDAwMDAwMDAtMTQ4MWZmZmZmIDog
bmFtZXNwYWNlMC4wCj4gICAgIDE1MDAwMDAwMC0zM2ZmZmZmZmYgOiDvv71f77+9Xjdf77+977+9
L1/vv73vv713Uu+/ve+/vVdR77+977+977+9Xu+/ve+/ve+/vSAuLi4KPiAgICAgMTUwMDAwMDAw
LTMzZmZmZmZmZiA6IFN5c3RlbSBSQU0KPiAKPiBXZSBoYXZlIHRvIG1ha2Ugc3VyZSB0byBkdXBs
aWNhdGUgdGhlIHN0cmluZy4gV2hpbGUgYXQgaXQsIHJlbW92ZSB0aGUKPiBzdXBlcmZsdW91cyBz
ZXR0aW5nIG9mIHRoZSBuYW1lIGFuZCBmaXh1cCBhIHN0YWxlIGNvbW1lbnQuCj4gCj4gRml4ZXM6
IDlmOTYwZGE3MmIyNSAoImRldmljZS1kYXg6ICJIb3RyZW1vdmUiIHBlcnNpc3RlbnQgbWVtb3J5
IHRoYXQgaXMgdXNlZCBsaWtlIG5vcm1hbCBSQU0iKQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwu
b3JnICMgdjUuMwoKaG0uCgpJcyB0aGlzIHJlYWxseSAtc3RhYmxlIG1hdGVyaWFsPyAgVGhlc2Ug
YXJlIGFsbCBwcml2aWxlZ2VkIG9wZXJhdGlvbnMsCkkgZXhwZWN0PwoKQXNzdW1pbmcgInllcyIs
IEkndmUgcXVldWVkIHRoaXMgc2VwYXJhdGVseSwgc3RhZ2VkIGZvciA1LjctcmNYLiAgSSdsbApy
ZWRvIHBhdGNoZXMgMi00IGFzIGEgdGhyZWUtcGF0Y2ggc2VyaWVzIGZvciA1LjgtcmMxLgoKPiBD
YzogRGFuIFdpbGxpYW1zIDxkYW4uai53aWxsaWFtc0BpbnRlbC5jb20+Cj4gQ2M6IFZpc2hhbCBW
ZXJtYSA8dmlzaGFsLmwudmVybWFAaW50ZWwuY29tPgo+IENjOiBEYXZlIEppYW5nIDxkYXZlLmpp
YW5nQGludGVsLmNvbT4KPiBDYzogUGF2ZWwgVGF0YXNoaW4gPHBhc2hhLnRhdGFzaGluQHNvbGVl
bi5jb20+CgpSZXZpZXdlcnMsIHBsZWFzZSA7KQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tl
eGVjCg==
