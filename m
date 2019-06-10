Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38A413B396
	for <lists+kexec@lfdr.de>; Mon, 10 Jun 2019 13:01:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKTWzKLEbdp8UVFxurAxqcndC3jc8tL0oXmtN6cRDvY=; b=OoMTufgdpY2bgI
	J7fBooSorgO4/iJHmMSGl3BwJdIzHT9DNAhNtt4cLzZnN6c44GVkLGgXeH36UvlxIQ19kAF2nc9k1
	7Bumcn2iyGw8uZ3xFHj6PxCQlaSLIVBccngS93KKGgUdlYPRLOa1fNy2rIwxK7SOZttkUMGktX3bX
	U4HlwVGW+SRO/KC6ZV3NcXdy3XZrL80Wdwkt5688CVaVQoAZATBkyTAYJ6C4UyVlrINMAqOCsb7Zy
	pSXQXSpxV4yxM36vViW9gpy3D8Fakixw0QJdNk0uXQwQx652RdqSPEKnWkMeT4VZGUbKF/gADB9tX
	9Ne2ZLfSN+jeIzgxl8Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haI38-0005xf-2o; Mon, 10 Jun 2019 11:01:14 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haI24-0004N5-G2
 for kexec@lists.infradead.org; Mon, 10 Jun 2019 11:00:13 +0000
Received: from zn.tnic (p200300EC2F052B0034A730CA72A5B0FA.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f05:2b00:34a7:30ca:72a5:b0fa])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 4712A1EC058B;
 Mon, 10 Jun 2019 13:00:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1560164401;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=FC555KNrAhS1cR0wrwCpjlMJbDNukZRHSEEhasGGexY=;
 b=hCKsehiBG9CFOTjOcKeJGWY5UCgs92ssiLnOR8rX8TbcKbSVnmfICpW8x/XAwbR7YNBxEt
 ke3gXfra5ESRia4JuW8wRlT1B4d5a8T0Tzq/GwDsZWJrqRMBD7x2bPWykMkfbHV4jTjkNd
 aIkRWalire1+TYSOs8Xy9eBg9S8wWU8=
Date: Mon, 10 Jun 2019 12:59:59 +0200
From: Borislav Petkov <bp@alien8.de>
To: Kairui Song <kasong@redhat.com>
Subject: Re: [PATCH] x86/kexec: Add ACPI NVS region to the ident map
Message-ID: <20190610105959.GB5488@zn.tnic>
References: <20190610073617.19767-1-kasong@redhat.com>
 <20190610095150.GA5488@zn.tnic>
 <CACPcB9f-sussXaOuOau6=CD85pS2KhcsknpJDQH_aEkwvLfvVA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACPcB9f-sussXaOuOau6=CD85pS2KhcsknpJDQH_aEkwvLfvVA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_040010_786439_9BA52747 
X-CRM114-Status: GOOD (  10.55  )
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
Cc: the arch/x86 maintainers <x86@kernel.org>, Baoquan He <bhe@redhat.com>,
 kexec@lists.infradead.org, Chao Fan <fanc.fnst@cn.fujitsu.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Dirk van der Merwe <dirk.vandermerwe@netronome.com>,
 Junichi Nomura <j-nomura@ce.jp.nec.com>, Thomas Gleixner <tglx@linutronix.de>,
 Dave Young <dyoung@redhat.com>, Ingo Molnar <mingo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 06:18:50PM +0800, Kairui Song wrote:
> Hi Boris, unfortunately I don't have a real machine which only have
> the NVS region. I did fake the memmap to emulate such problem but
> can't really promise this will fix the real case. So just declare it
> won't break anything that is already working. And I'm asking Junichi
> to have a try as he reported this issue on the machines he has.

Yes, this is how you should do it. First you test on a real hardware -
if the issue is such that needs a real hardware to verify - and if it
passes, *then* you send the patch.

If you don't have access to the box, then ask someone who has.

But for the future, please do not send untested patches in a hurry,
hoping that they would work. This could cause more trouble than the
little time you might save speculating it'll all go fine.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
