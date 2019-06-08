Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C7C439BFF
	for <lists+kexec@lfdr.de>; Sat,  8 Jun 2019 11:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3myOe3yyn4eYUyZNxYRxmVEceNhpEYOHFKfdvwz8HM=; b=h95C6qh1CQCkKh
	3QBiDsQkDWgs307wfv9e32EyZgpRHMbK9AVPcDMxIoAIBveu+saua2J/iRL8QwxE+/XCNDZesLsp+
	Pe6u8r8pBAMEhWWVwtS9kgkWNMBas92KUFI0PInXqHAdY8VMZOuDBdjc3miu3gWwTRdmn7Qv68jJi
	dnmPMPElIUfDXmOPkWUeWvH/1vSlYX1gJoxhtKqIDCzBtVrPykgSfMdRUNWYr6PJnDakgOqw/BnI0
	Z8dz0Lmqnn8YeR/s2x+FHzxdm8jnoQ4vreJjZPo0f8LjgLbnE/P5jPpvs1KE3ustQo16li8qKxh1u
	0ELaGb+VwoEyer6jSj7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZXNO-0001dT-Hw; Sat, 08 Jun 2019 09:11:02 +0000
Received: from mail.skyhub.de ([2a01:4f8:190:11c2::b:1457])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZXNK-0001UZ-3y
 for kexec@lists.infradead.org; Sat, 08 Jun 2019 09:10:59 +0000
Received: from zn.tnic (p200300EC2F288A00DCF654BEDE068B01.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f28:8a00:dcf6:54be:de06:8b01])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 8D7BF1EC0235;
 Sat,  8 Jun 2019 11:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1559985031;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=agc6qWSU+tH8yyKDxQhV32Xjr+GidM+gMCD2W3Xjjy8=;
 b=URdomBe1ERBxGlufupOX27J5DZgEIDbAr5wx8/GGH5LLLEeYN0IUm/2o+y/aoQahA3dTGu
 LL1uAfkVOn2reWaQBnK5dSv7jmz4oo6GkwDbWygu4IFFJCbydP7VCN6LXFLkSJT9caO7yh
 lJgNkzoukgNEvmehXJRPQsCqHxaAGw0=
Date: Sat, 8 Jun 2019 11:10:30 +0200
From: Borislav Petkov <bp@alien8.de>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH 0/3 v11] add reserved e820 ranges to the kdump kernel
 e820 table
Message-ID: <20190608091030.GB32464@zn.tnic>
References: <20190423013007.17838-1-lijiang@redhat.com>
 <12847a03-3226-0b29-97b5-04d404410147@redhat.com>
 <20190607174211.GN20269@zn.tnic>
 <20190608035451.GB26148@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190608035451.GB26148@MiWiFi-R3L-srv>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_021058_317548_A2AE3E57 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thomas.Lendacky@amd.com, x86@kernel.org, lijiang <lijiang@redhat.com>,
 peterz@infradead.org, dave.hansen@linux.intel.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, mingo@redhat.com, luto@kernel.org, hpa@zytor.com,
 tglx@linutronix.de, dyoung@redhat.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Sat, Jun 08, 2019 at 11:54:51AM +0800, Baoquan He wrote:
> Is it a UEFI box?

Yes.

> If it's uefi machine, it should relate to below issue. Because kexec
> always fails to randomly choose a new position for kernel.

The kernel succeeds in selecting a position for the kernel - the kexec
kernel doesn't load when a panic happens. Rather, the box panics and
nothing more.

> The current kexec code fills boot_params->efi_info->efi_loader_signature,
> but doesn't contruct efi_memmap table. The kexec/kdump kernel will always
> fail to find available slot for KASLR in process_efi_entries.

Kernel has

# CONFIG_RANDOMIZE_BASE is not set

so no KASLR.

-- 
Regards/Gruss,
    Boris.

Good mailing practices for 400: avoid top-posting and trim the reply.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
