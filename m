Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7AEC3B3FA
	for <lists+kexec@lfdr.de>; Mon, 10 Jun 2019 13:24:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sD36TLPAkF/UKCKrT6q00BJwM9rrVr7l+bFerniFe6o=; b=aebbm28bId8SMl
	FfL8REHkAOOsOvbFBaB+snRZ4TqZnhiptXDohz9+MFvPLzfLHs6JuLdrRW5f7J26nwRgGJdzYtOar
	PAS67mkAbhW1dI4mcYYZrMYxxpNMw0vQlb7I67pTm4Qa4VvMqs1V8FgTbkrBn8AYHydIOt2qMZmc3
	FJt+L77LabJyCv1cKkOZdQo4oEBGkXIwL7sitDjg6It2O6rsVe4IByBXnyaJthYdLF5KAlOx9UP8L
	pY1FSUOhZXO2CD+kQjzvK2zYkqUcbJtKUKiarLsWVigbvV74Uc7iyCJjgrYb4DKGUgthw6u0mGZZJ
	7Y08SrRY5yCkjg6W+PBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haIPp-0006zK-Ll; Mon, 10 Jun 2019 11:24:41 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haIPl-0006yz-TS
 for kexec@lists.infradead.org; Mon, 10 Jun 2019 11:24:39 +0000
Received: from zn.tnic (p200300EC2F052B00DC69C02FEF5E8A62.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f05:2b00:dc69:c02f:ef5e:8a62])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 4AC991EC058B;
 Mon, 10 Jun 2019 13:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1560165876;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=ah8te1umBfDARXJum2UBL7IkROuTWyGRC83CORZOQPc=;
 b=kZvnhNOLKQUZDEgg8h6ue3KRJPUeSo1yM9LyFvufiadt02+CLDjUlQtbz9ZORrvrGtQKue
 fPHdQq8SRGk8iwNVjoDt9WXg5PSems6Uz1RGMvZh+X1IyHwqw5Z+nOp1UbayFeyW8AXASP
 9sKfokWBhR1b87y9kN1sM5rqSYjNnBo=
Date: Mon, 10 Jun 2019 13:24:31 +0200
From: Borislav Petkov <bp@alien8.de>
To: Junichi Nomura <j-nomura@ce.jp.nec.com>
Subject: Re: [PATCH] x86/kexec: Add ACPI NVS region to the ident map
Message-ID: <20190610112431.GC5488@zn.tnic>
References: <20190610073617.19767-1-kasong@redhat.com>
 <20190610095150.GA5488@zn.tnic>
 <CACPcB9f-sussXaOuOau6=CD85pS2KhcsknpJDQH_aEkwvLfvVA@mail.gmail.com>
 <20190610105959.GB5488@zn.tnic>
 <1555938c-e00f-d40f-5f24-146aec7a67eb@ce.jp.nec.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1555938c-e00f-d40f-5f24-146aec7a67eb@ce.jp.nec.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_042438_109545_7A788B29 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: the arch/x86 maintainers <x86@kernel.org>, Kairui Song <kasong@redhat.com>,
 Baoquan He <bhe@redhat.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 Chao Fan <fanc.fnst@cn.fujitsu.com>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dirk van der Merwe <dirk.vandermerwe@netronome.com>,
 Thomas Gleixner <tglx@linutronix.de>, Dave Young <dyoung@redhat.com>,
 Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 11:07:05AM +0000, Junichi Nomura wrote:
> I had tested the version I posted here on bunch of physical machines
> I had access and confirmed it didn't broke working setups:
> https://lore.kernel.org/lkml/20190515051717.GA13703@jeru.linux.bs1.fc.nec.co.jp/
> 
> Since the logic in the patch seems unchanged, I'm very sure it's ok.

Ok, thanks for testing.

I'll add your Tested-by.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
