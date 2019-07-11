Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5FE654F6
	for <lists+kexec@lfdr.de>; Thu, 11 Jul 2019 13:09:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OX7gwYVRoaqSyBta56IHKsxvDLarVSiKuyHmPykA7xk=; b=smnHJxAQ7kAq0O
	kis+4ZXKe0FgJdRxUP9BasHxL38vccFAk2PORBGC3jWmBG3BI6jP+c21wQdBJD99IkG6z8c8VHqPc
	MTixr52+6CtNg//pBmMF91e0W0E8hMOjIxoo6jJ+3DGQ4DA3aFTs0vZm6sUmbQJQvhz4LS9omFESV
	UB+Dm+dRFLA/wgrjPgXZPB3iPJmphKY2/hNYs6GvLzsJxdjxP5zoSVMuJbwM25FRH4aOXH+fssp0l
	EuzDXkkMERdqiJtitwBKPk5AbU/w0PsCM6IDsaV6EpUXBN1Pbbwewi1X8soeCRsJ5Y5ZworYUDfEi
	K8vidHPWdlea1Ojo4vNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlWwq-0007Gy-8U; Thu, 11 Jul 2019 11:09:12 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlWwm-0007GM-Qq
 for kexec@lists.infradead.org; Thu, 11 Jul 2019 11:09:10 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45ktbY11hWz9sBt;
 Thu, 11 Jul 2019 21:08:56 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Sven Schnelle <svens@stackframe.org>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [PATCH v3 5/7] kexec_elf: remove elf_addr_to_cpu macro
In-Reply-To: <20190710180518.GA6343@t470p.stackframe.org>
References: <20190710142944.2774-1-svens@stackframe.org>
 <20190710142944.2774-6-svens@stackframe.org>
 <49206784-009c-391b-5f9a-11e9b1de930b@c-s.fr>
 <20190710180518.GA6343@t470p.stackframe.org>
Date: Thu, 11 Jul 2019 21:08:51 +1000
Message-ID: <871rywhlq4.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_040909_085594_7612BCD3 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kexec@lists.infradead.org, deller@gmx.de, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

U3ZlbiBTY2huZWxsZSA8c3ZlbnNAc3RhY2tmcmFtZS5vcmc+IHdyaXRlczoKPiBPbiBXZWQsIEp1
bCAxMCwgMjAxOSBhdCAwNTowOToyOVBNICswMjAwLCBDaHJpc3RvcGhlIExlcm95IHdyb3RlOgo+
PiBMZSAxMC8wNy8yMDE5IMOgIDE2OjI5LCBTdmVuIFNjaG5lbGxlIGEgw6ljcml0wqA6Cj4+ID4g
SXQgaGFkIG9ubHkgb25lIGRlZmluaXRpb24sIHNvIGp1c3QgdXNlIHRoZSBmdW5jdGlvbiBkaXJl
Y3RseS4KPj4gCj4+IEl0IGhhZCBvbmx5IG9uZSBkZWZpbml0aW9uIGJlY2F1c2UgaXQgd2FzIGZv
ciBwcGM2NCBvbmx5Lgo+PiBCdXQgYXMgZmFyIGFzIEkgdW5kZXJzdGFuZCAoYXQgbGVhc3QgZnJv
bSB0aGUgbmFtZSBvZiB0aGUgbmV3IGZpbGUpLCB5b3UKPj4gd2FudCBpdCB0byBiZSBnZW5lcmlj
LCBkb24ndCB5b3UgPyBUaGVyZWZvcmUgSSBnZXQgb24gMzIgYml0cyBpdCB3b3VsZCBiZQo+PiBl
bGYzMl90b19jcHUoKS4KPgo+IFRoYXQgYnJpbmdzIHVwIHRoZSBxdWVzdGlvbiB3aGV0aGVyIHdl
IG5lZWQgdGhvc2UgZW5kaWFuZXNzIGNvbnZlcnNpb25zLiBJIHdvdWxkCj4gYXNzdW1lIHRoYXQg
dGhlIEVMRiBmaWxlIGhhcyBhbHdheXMgdGhlIHNhbWUgZW5kaWFuZXNzIGFzIHRoZSBydW5uaW5n
IGtlcm5lbC4gU28KPiBpIHRoaW5rIHdlIGNvdWxkIGp1c3QgZHJvcCB0aGVtLiBXaGF0IGRvIHlv
dSB0aGluaz8KCldlIHNob3VsZCBiZSBhYmxlIHRvIGtleGVjIGZyb20gYmlnIHRvIGxpdHRsZSBl
bmRpYW4gb3IgdmljZSB2ZXJzYSwgc28KdGhleSBhcmUgbmVjZXNzYXJ5LgoKY2hlZXJzCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5n
IGxpc3QKa2V4ZWNAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2tleGVjCg==
