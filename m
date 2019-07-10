Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E51C648DB
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 17:02:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A1X3xeYRMEpGcrZ4Bs1Nk3Y4GkxTDbfKPnBdZ3HwiPU=; b=jfz/gT9ae2wZkp6kBg68d17Ui
	MVF/TNS89Yd7ZQvBcjZvO6deu3ZM3UmS/3O6C1HKwhlcOwfl5RNGw0DmLgEwkR52h2Bko9kfnbngN
	jCJFqGdK7h4OIUU/vahBc3xdRuBFIqaPi/FdB5bJ0k5eJpaR4tsbYrIqoR0wenXZuf/voSXrLSO+l
	GQ8pAUe5Ny56NkPrEe61Y9/f5CkOL0JaLXb5DwEZ7fJDUiIf8cZy9D0Ow6tWGiEHMNACH5U8DVYa3
	RPMq3XeEBOZAqOCgV2szxLJesCNv76bjthIwn7G+JcCUzYxfuE8qbm3Aqg0djD/ZcJ6licEoWceck
	irkTAWp5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlE7I-0002bT-2M; Wed, 10 Jul 2019 15:02:44 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlE7E-0002aT-6Y
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 15:02:41 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 45kMqX5g0Zz9vBK6;
 Wed, 10 Jul 2019 17:02:32 +0200 (CEST)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=BJ4sWu48; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id uJEqSXiV2ybC; Wed, 10 Jul 2019 17:02:32 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 45kMqX4b86z9vBJX;
 Wed, 10 Jul 2019 17:02:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1562770952; bh=p0Ol0rmBzFzZQpkrGhuxgq2fbJl2jXBPenG5CrgDc3A=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=BJ4sWu480Or7vHdI+GpJfMMdYqr3S2ortsnyas2gueBIzi017w123fgbdaphQ12V1
 hODB2wowkEr5/NuyEPeL41eecQHhSqClJHdA0HW7yGbKmWCBP3PvTkIT9ZrPTvZ3Mx
 obrsTaDx6xAHGqT1Kg7663yn2lqHo0A4dZZXYERY=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 369738B80B;
 Wed, 10 Jul 2019 17:02:34 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id rezQS68riQaZ; Wed, 10 Jul 2019 17:02:34 +0200 (CEST)
Received: from [172.25.230.101] (po15451.idsi0.si.c-s.fr [172.25.230.101])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id D97958B807;
 Wed, 10 Jul 2019 17:02:33 +0200 (CEST)
Subject: Re: [PATCH v3 6/7] kexec_elf: remove Elf_Rel macro
To: Sven Schnelle <svens@stackframe.org>, kexec@lists.infradead.org
References: <20190710142944.2774-1-svens@stackframe.org>
 <20190710142944.2774-7-svens@stackframe.org>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <e9ad2137-f0a9-38e1-87a6-f4e215c87b53@c-s.fr>
Date: Wed, 10 Jul 2019 17:02:31 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190710142944.2774-7-svens@stackframe.org>
Content-Language: fr
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_080240_386521_54189A4F 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
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

CgpMZSAxMC8wNy8yMDE5IMOgIDE2OjI5LCBTdmVuIFNjaG5lbGxlIGEgw6ljcml0wqA6Cj4gSXQg
d2Fzbid0IHVzZWQgYW55d2hlcmUsIHNvIGxldHMgZHJvcCBpdC4KCkFuZCBhbHNvLCBpdCBpcyBh
bHJlYWR5IGRlZmluZWQgaW4gYXNtLWdlbmVyaWMvbW9kdWxlLmgKCj4gCj4gU2lnbmVkLW9mZi1i
eTogU3ZlbiBTY2huZWxsZSA8c3ZlbnNAc3RhY2tmcmFtZS5vcmc+CgpSZXZpZXdlZC1ieTogQ2hy
aXN0b3BoZSBMZXJveSA8Y2hyaXN0b3BoZS5sZXJveUBjLXMuZnI+Cgo+IC0tLQo+ICAga2VybmVs
L2tleGVjX2VsZi5jIHwgNCAtLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkK
PiAKPiBkaWZmIC0tZ2l0IGEva2VybmVsL2tleGVjX2VsZi5jIGIva2VybmVsL2tleGVjX2VsZi5j
Cj4gaW5kZXggOTllNmQ2M2I1ZGZjLi5iN2U0N2RkZDdjYWQgMTAwNjQ0Cj4gLS0tIGEva2VybmVs
L2tleGVjX2VsZi5jCj4gKysrIGIva2VybmVsL2tleGVjX2VsZi5jCj4gQEAgLTgsMTAgKzgsNiBA
QAo+ICAgI2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KPiAgICNpbmNsdWRlIDxsaW51eC90eXBlcy5o
Pgo+ICAgCj4gLSNpZm5kZWYgRWxmX1JlbAo+IC0jZGVmaW5lIEVsZl9SZWwJCUVsZjY0X1JlbAo+
IC0jZW5kaWYgLyogRWxmX1JlbCAqLwo+IC0KPiAgIHN0YXRpYyBpbmxpbmUgYm9vbCBlbGZfaXNf
ZWxmX2ZpbGUoY29uc3Qgc3RydWN0IGVsZmhkciAqZWhkcikKPiAgIHsKPiAgIAlyZXR1cm4gbWVt
Y21wKGVoZHItPmVfaWRlbnQsIEVMRk1BRywgU0VMRk1BRykgPT0gMDsKPiAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmtleGVjIG1haWxpbmcgbGlzdApr
ZXhlY0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8va2V4ZWMK
