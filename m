Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6548362F4B
	for <lists+kexec@lfdr.de>; Tue,  9 Jul 2019 06:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ew5Tc0gxC6fNBqEu3v2O6XtSvE7noYAZzK/R7bSFOdY=; b=dM06a16jJaDFAw
	hyk51Oh3Hpo/W49GMVu0Vwdn3ZZsjhKyf4pTfdDRXK4bGv3miWUPIdvnpWfQw5jnOJ/SLgRoY7LIh
	S/ujwAXF2VL7sjjN7wlHGGegRG/QPatFKSgZrj8J+e+ckaBAmMOUfr+QIzGAfkuUC2yK7c5DyB0jj
	dwwcCT4HxH2HGPkEzve4iQGh9UAi5Jb0q4JB1J3SnhZBQObHThGjFFhxYvErZi4fWS+4dH3rcINjo
	aLPBdN+N6iVLLbVeF0fzlM/ZGbVWQGVDWwRCxH/2juARQUt3qUe0MjlSsT5DSC7Og9HuNVxRAnSGW
	9LFYu0BjmpRQak+f5atQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkhbL-0001PX-5p; Tue, 09 Jul 2019 04:19:35 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkhbG-0001Ok-My
 for kexec@lists.infradead.org; Tue, 09 Jul 2019 04:19:32 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45jTbs6PjQz9s7T;
 Tue,  9 Jul 2019 14:19:21 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Christophe Leroy <christophe.leroy@c-s.fr>, kexec@lists.infradead.org,
 Sven Schnelle <svens@stackframe.org>
Subject: Re: [PATCH using git format-patch -C] kexec: add generic support for
 elf kernel images
In-Reply-To: <e016c0bb-c857-b78c-a159-120e42d0db03@c-s.fr>
References: <20190708100624.EBCDF68DB2@pc17473vm.idsi0.si.c-s.fr>
 <e016c0bb-c857-b78c-a159-120e42d0db03@c-s.fr>
Date: Tue, 09 Jul 2019 14:19:21 +1000
Message-ID: <87pnmjhmba.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_211930_913207_12063149 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: deller@gmx.de, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Q2hyaXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJveUBjLXMuZnI+IHdyaXRlczoKPiBIaSBT
dmVuLAo+Cj4gTGUgMDgvMDcvMjAxOSDDoCAxMjowNiwgQ2hyaXN0b3BoZSBMZXJveSBhIMOpY3Jp
dMKgOgo+PiBGcm9tOiBTdmVuIFNjaG5lbGxlIDxzdmVuc0BzdGFja2ZyYW1lLm9yZz4KPgo+IFBs
ZWFzZSBkZXNjcmliZSB5b3UgcGF0Y2guCj4KPiBBbGwgdGhlIGNoYW5nZXMgeW91IGFyZSBkb2lu
ZyB0byB0aGUgcHBjNjQgdmVyc2lvbiBpbiBvcmRlciB0byBtYWtlIGl0IAo+IGdlbmVyaWMgc2hv
dWxkIGJlIGRlc2NyaWJlZC4KPgo+IFRob3NlIGNoYW5nZXMgYXJlIGFsc28gbWF5YmUgd29ydGgg
c3BsaXR0aW5nIHRoZSBwYXRjaCBpbiBzZXZlcmFsIHBhcnRzLCAKPiBlaXRoZXIgcHJlcGFyaW5n
IHRoZSBwcGM2NCBmb3IgZ2VuZXJpYyB0aGVuIG1vdmluZyB0byBrZXJuZWwva2V4ZWNfZWxmLmMg
Cj4gb3IgbW92aW5nIHRvIGtlcm5lbC9rZXhlY19lbGYuYyB3aXRob3V0IG1vZGlmaWNhdGlvbnMs
IHRoZW4gbW9kaWZ5aW5nIGl0IAo+IHRvIG1ha2UgaXQgZ2VuZXJpYy4KPgo+IE5vdGUgdGhhdCB5
b3VyIHBhdGNoIG9ubHkgYXBwbGllcyBvbiBMaW51eCA1LjEsIGl0IGRvZXNuJ3QgYXBwbHkgb24g
Cj4gcG93ZXJwYy9uZXh0LgoKRG9uJ3Qgd29ycnkgYWJvdXQgdGhhdC4gQnkgdGhlIHRpbWUgaXQn
cyBtZXJnZWQgcG93ZXJwYy9uZXh0IHdpbGwKcHJvYmFibHkgaGF2ZSBtb3ZlZCBvbiwgYW5kIGlm
IG5vdCBJIGNhbiBkZWFsIHdpdGggYW55IGNvbmZsaWN0cy4KClVzaW5nIG1hc3RlciBvciBwb3dl
cnBjL21lcmdlIGFzIGEgYmFzZSBpcyBmaW5lLgoKY2hlZXJzCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2tleGVjCg==
