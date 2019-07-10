Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3838648B9
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 16:55:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wRLHmZmw/h8oNRY3mMgGWZttFkoB9lLqxsZUWTd8ZTI=; b=bkvnPGKOgMig/i3nBvWaRvwZR
	7ivO8druODhBsKbOTmZHchOUgLbuI403fzsGBJsb8iSvWHvCpeH9rxJJE83G1SXZmc5Rhl9EhgPYF
	OxoE7XN/6MPI2+zLMQG+/eyI3arL2FrBtzB2anJz1VuNVS0AjHWwKAw6uloceq1rUMWBVfGZzIA+G
	83FZnMV6jcFMWFt4bM+ac5Zlz+tmxPUs9FBox+4ORVtccgjqR9D4WhEAahnIgfGZev7nD6g6lHM3p
	O69waH8/7yIQ4ixMI5XXMNvMnRpx16QwD3B+vsl0LE+b10YsZgijeBNQay+4UP7LGcuR5wq+khnLa
	UF39s4WNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlE0J-0000Dw-VG; Wed, 10 Jul 2019 14:55:32 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlE09-0000DU-LN
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 14:55:23 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 45kMg011QGz9vBL9;
 Wed, 10 Jul 2019 16:55:08 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=kLZtyL5l; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id S2QPTAofV8Wp; Wed, 10 Jul 2019 16:55:08 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 45kMg000CBz9vBKx;
 Wed, 10 Jul 2019 16:55:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1562770508; bh=f04mWvdmBZY2FUDsS/VFc17IYEz8iYcB6pvDdm6nJ/c=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=kLZtyL5lE7nBm1ErK3byyuVey5XaQgz9Me5sRtZy3qLtE5xZFeB58gmCeDFnGVXsl
 +hwIN+jk8NgpDdkg/kYhjiatwapZFBaK/LNQL6HnfdhtNYQdkLvx8leP/IRnacpVmD
 5xeDrGiNJQqXyznSlzNxjcO49nbyv3gqtCGNcEnA=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 890A58B80B;
 Wed, 10 Jul 2019 16:55:09 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id eDcK6_YkQYDa; Wed, 10 Jul 2019 16:55:09 +0200 (CEST)
Received: from [172.25.230.101] (po15451.idsi0.si.c-s.fr [172.25.230.101])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 3F8438B808;
 Wed, 10 Jul 2019 16:55:09 +0200 (CEST)
Subject: Re: [PATCH v3 7/7] kexec_elf: remove unused variable in
 kexec_elf_load()
To: Sven Schnelle <svens@stackframe.org>, kexec@lists.infradead.org
References: <20190710142944.2774-1-svens@stackframe.org>
 <20190710142944.2774-8-svens@stackframe.org>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <5ff70f9b-905d-000d-af59-cba5c37f9328@c-s.fr>
Date: Wed, 10 Jul 2019 16:55:06 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190710142944.2774-8-svens@stackframe.org>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_075522_035279_6E532410 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

CgpMZSAxMC8wNy8yMDE5IMOgIDE2OjI5LCBTdmVuIFNjaG5lbGxlIGEgw6ljcml0wqA6Cj4gYmFz
ZSB3YXMgbmV2ZXIgdW5zaWduZWQsIHNvIHdlIGNhbiByZW1vdmUgaXQuCgpEbyB5b3UgbWVhbiBu
ZXZlciBhc3NpZ25lZCA/CgoKPiAKPiBTaWduZWQtb2ZmLWJ5OiBTdmVuIFNjaG5lbGxlIDxzdmVu
c0BzdGFja2ZyYW1lLm9yZz4KClJldmlld2VkLWJ5OiBDaHJpc3RvcGhlIExlcm95IDxjaHJpc3Rv
cGhlLmxlcm95QGMtcy5mcj4KCj4gLS0tCj4gICBrZXJuZWwva2V4ZWNfZWxmLmMgfCA3ICsrLS0t
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCj4g
Cj4gZGlmZiAtLWdpdCBhL2tlcm5lbC9rZXhlY19lbGYuYyBiL2tlcm5lbC9rZXhlY19lbGYuYwo+
IGluZGV4IGI3ZTQ3ZGRkN2NhZC4uYTU2ZWM1NDgxZTcxIDEwMDY0NAo+IC0tLSBhL2tlcm5lbC9r
ZXhlY19lbGYuYwo+ICsrKyBiL2tlcm5lbC9rZXhlY19lbGYuYwo+IEBAIC0zNDgsNyArMzQ4LDcg
QEAgaW50IGtleGVjX2VsZl9sb2FkKHN0cnVjdCBraW1hZ2UgKmltYWdlLCBzdHJ1Y3QgZWxmaGRy
ICplaGRyLAo+ICAgCQkJIHN0cnVjdCBrZXhlY19idWYgKmtidWYsCj4gICAJCQkgdW5zaWduZWQg
bG9uZyAqbG93ZXN0X2xvYWRfYWRkcikKPiAgIHsKPiAtCXVuc2lnbmVkIGxvbmcgYmFzZSA9IDAs
IGxvd2VzdF9hZGRyID0gVUlOVF9NQVg7Cj4gKwl1bnNpZ25lZCBsb25nIGxvd2VzdF9hZGRyID0g
VUlOVF9NQVg7Cj4gICAJaW50IHJldDsKPiAgIAlzaXplX3QgaTsKPiAgIAo+IEBAIC0zNzAsNyAr
MzcwLDcgQEAgaW50IGtleGVjX2VsZl9sb2FkKHN0cnVjdCBraW1hZ2UgKmltYWdlLCBzdHJ1Y3Qg
ZWxmaGRyICplaGRyLAo+ICAgCQlrYnVmLT5idWZzeiA9IHNpemU7Cj4gICAJCWtidWYtPm1lbXN6
ID0gcGhkci0+cF9tZW1zejsKPiAgIAkJa2J1Zi0+YnVmX2FsaWduID0gcGhkci0+cF9hbGlnbjsK
PiAtCQlrYnVmLT5idWZfbWluID0gcGhkci0+cF9wYWRkciArIGJhc2U7Cj4gKwkJa2J1Zi0+YnVm
X21pbiA9IHBoZHItPnBfcGFkZHI7Cj4gICAJCXJldCA9IGtleGVjX2FkZF9idWZmZXIoa2J1Zik7
Cj4gICAJCWlmIChyZXQpCj4gICAJCQlnb3RvIG91dDsKPiBAQCAtMzgwLDkgKzM4MCw2IEBAIGlu
dCBrZXhlY19lbGZfbG9hZChzdHJ1Y3Qga2ltYWdlICppbWFnZSwgc3RydWN0IGVsZmhkciAqZWhk
ciwKPiAgIAkJCWxvd2VzdF9hZGRyID0gbG9hZF9hZGRyOwo+ICAgCX0KPiAgIAo+IC0JLyogVXBk
YXRlIGVudHJ5IHBvaW50IHRvIHJlZmxlY3QgbmV3IGxvYWQgYWRkcmVzcy4gKi8KPiAtCWVoZHIt
PmVfZW50cnkgKz0gYmFzZTsKPiAtCj4gICAJKmxvd2VzdF9sb2FkX2FkZHIgPSBsb3dlc3RfYWRk
cjsKPiAgIAlyZXQgPSAwOwo+ICAgIG91dDoKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdAprZXhlY0BsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8va2V4
ZWMK
