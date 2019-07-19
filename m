Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB6426E720
	for <lists+kexec@lfdr.de>; Fri, 19 Jul 2019 16:06:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vtwuoqoIziS/ofs7vhq42YXmgkAVc5wpqVEAUAmDX5o=; b=SdH1aJyRfL4eQp
	+Fo9GqXbXD0JDacAVsbbjVaqdBuQjFKF+zgqCon6Qw3/EZ2/0uE/LcTqB8iYytPUigOX9/A/4ZGFD
	3TP0CZNpbw4RURMKP+8DICxNXZIbsa3IoBDnX/rFxscFYjTUuavHuDkODCqCnDXHtpL+o80KSAJSQ
	6ZdBgMrcJ64KjX/oJQiw9sISprUQ5P2R3LzzbksAPSAODKNcDd6Vu29qLNsZsr20A46M/skejLLLX
	3T148B2KUspgvgbXXNgpD2GAby+BEHIwHsloforUveMZ9ysDvzThgMap2k9zViNIoLULB29AgCxuf
	pr5QxGjdaV4KQ+1zWotg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoTX0-0008OU-8j; Fri, 19 Jul 2019 14:06:42 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoTWu-0008Ny-Py
 for kexec@lists.infradead.org; Fri, 19 Jul 2019 14:06:38 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45qt8f5BxCz9s3Z;
 Sat, 20 Jul 2019 00:06:25 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Sven Schnelle <svens@stackframe.org>
Subject: Re: [PATCH v3 5/7] kexec_elf: remove elf_addr_to_cpu macro
In-Reply-To: <20190715072417.GA25659@t470p.stackframe.org>
References: <20190710142944.2774-1-svens@stackframe.org>
 <20190710142944.2774-6-svens@stackframe.org>
 <49206784-009c-391b-5f9a-11e9b1de930b@c-s.fr>
 <20190710180518.GA6343@t470p.stackframe.org>
 <871rywhlq4.fsf@concordia.ellerman.id.au>
 <20190715072417.GA25659@t470p.stackframe.org>
Date: Sat, 20 Jul 2019 00:06:21 +1000
Message-ID: <87tvbi6rvm.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_070637_057643_27D6F321 
X-CRM114-Status: GOOD (  11.50  )
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, kexec@lists.infradead.org,
 deller@gmx.de, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

U3ZlbiBTY2huZWxsZSA8c3ZlbnNAc3RhY2tmcmFtZS5vcmc+IHdyaXRlczoKPiBIaSBNaWNoYWVs
LAo+Cj4gT24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDk6MDg6NTFQTSArMTAwMCwgTWljaGFlbCBF
bGxlcm1hbiB3cm90ZToKPj4gU3ZlbiBTY2huZWxsZSA8c3ZlbnNAc3RhY2tmcmFtZS5vcmc+IHdy
aXRlczoKPj4gPiBPbiBXZWQsIEp1bCAxMCwgMjAxOSBhdCAwNTowOToyOVBNICswMjAwLCBDaHJp
c3RvcGhlIExlcm95IHdyb3RlOgo+PiA+PiBMZSAxMC8wNy8yMDE5IMOgIDE2OjI5LCBTdmVuIFNj
aG5lbGxlIGEgw6ljcml0wqA6Cj4+ID4+ID4gSXQgaGFkIG9ubHkgb25lIGRlZmluaXRpb24sIHNv
IGp1c3QgdXNlIHRoZSBmdW5jdGlvbiBkaXJlY3RseS4KPj4gPj4gCj4+ID4+IEl0IGhhZCBvbmx5
IG9uZSBkZWZpbml0aW9uIGJlY2F1c2UgaXQgd2FzIGZvciBwcGM2NCBvbmx5Lgo+PiA+PiBCdXQg
YXMgZmFyIGFzIEkgdW5kZXJzdGFuZCAoYXQgbGVhc3QgZnJvbSB0aGUgbmFtZSBvZiB0aGUgbmV3
IGZpbGUpLCB5b3UKPj4gPj4gd2FudCBpdCB0byBiZSBnZW5lcmljLCBkb24ndCB5b3UgPyBUaGVy
ZWZvcmUgSSBnZXQgb24gMzIgYml0cyBpdCB3b3VsZCBiZQo+PiA+PiBlbGYzMl90b19jcHUoKS4K
Pj4gPgo+PiA+IFRoYXQgYnJpbmdzIHVwIHRoZSBxdWVzdGlvbiB3aGV0aGVyIHdlIG5lZWQgdGhv
c2UgZW5kaWFuZXNzIGNvbnZlcnNpb25zLiBJIHdvdWxkCj4+ID4gYXNzdW1lIHRoYXQgdGhlIEVM
RiBmaWxlIGhhcyBhbHdheXMgdGhlIHNhbWUgZW5kaWFuZXNzIGFzIHRoZSBydW5uaW5nIGtlcm5l
bC4gU28KPj4gPiBpIHRoaW5rIHdlIGNvdWxkIGp1c3QgZHJvcCB0aGVtLiBXaGF0IGRvIHlvdSB0
aGluaz8KPj4gCj4+IFdlIHNob3VsZCBiZSBhYmxlIHRvIGtleGVjIGZyb20gYmlnIHRvIGxpdHRs
ZSBlbmRpYW4gb3IgdmljZSB2ZXJzYSwgc28KPj4gdGhleSBhcmUgbmVjZXNzYXJ5Lgo+Cj4gSSds
bCB1cGRhdGUgdGhlIHBhdGNoIHRvIGNoZWNrIGZvciBhIG5lZWRlZCAzMi82NCBiaXQgY29udmVy
c2lvbiBkdXJpbmcgcnVudGltZSwKPiBzbyB3ZSBjYW4gYWxzbyBrZXhlYyBmcm9tIDMyIHRvIDY0
IGJpdCBrZXJuZWxzIGFuZCB2aWNlIHZlcnNhLiBEb24ndCBrbm93Cj4gd2hldGhlciB0aGF0J3Mg
cG9zc2libGUgb24gcG93ZXJwYywgYnV0IGF0IGxlYXN0IG9uIHBhcmlzYyBpdCBpcy4KCk9uIHNv
bWUgb2YgdGhlIEZyZWVzY2FsZSAoTlhQKSBtYWNoaW5lcyB0aGF0IHNob3VsZCBhY3R1YWxseSBi
ZQpwb3NzaWJsZSwgdGhlIGhhcmR3YXJlIGNhbiBydW4gYSA2NCBvciAzMi1iaXQga2VybmVsLCBi
dXQgSSdtIG5vdCBzdXJlCmlmIGFueW9uZSBoYXMgYWN0dWFsbHkgdGVzdGVkIGtleGVjJ2luZyBm
cm9tIG9uZSB0byB0aGUgb3RoZXIuCgpjaGVlcnMKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4
ZWMK
