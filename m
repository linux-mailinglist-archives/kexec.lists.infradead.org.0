Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF2CEAAE5
	for <lists+kexec@lfdr.de>; Thu, 31 Oct 2019 08:14:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m1y4oMrc4rUWNGpxnfpDOWQYl83y+tSaAATL4am6Rh8=; b=aTHU3KvccObSxF
	AGbdrewhW2RukQzIjq06d4RwX54H4Jud0SK1b41FRukUxEUjAEcPtPFhyoL7VVPmqxKGgUoarcVeU
	Q8W4xcBR8rp6R85RaLlqFwTxx9UBIZCvLFVHPvLlc0lGDc/Zxbg3uGCxmtIOhdHYUvp8rtVTC3Rxb
	u25Ss2boVm0qKTe9lLyvw74I1OMpl8HrqFINIhTHzSCtRr2O5cqalU6ThlOaexaQ6tP48NdziRZqu
	6I8oJYHE19uUPKksgVG93P+R1J0cAjsegE78iHscFLeDO+QtxWxdCSkeeDH1Ho1B7anBVxvSRyv3i
	vzFFSfItTFDUI689DLrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ4ei-0003WD-US; Thu, 31 Oct 2019 07:14:04 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ4ed-0003VJ-PO
 for kexec@lists.infradead.org; Thu, 31 Oct 2019 07:14:03 +0000
Received: from nazgul.tnic (unknown [46.218.74.72])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 21B001EC0CC3;
 Thu, 31 Oct 2019 08:13:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1572506031;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=iSXPghAWzlU3fW//jNjEO3q3vXqfETkOCwCibktbWkY=;
 b=m7jOLGDqL1xwgbpgs/O8iIxBDc+jsqg5zmPK5lKvA0Hb4n0PdavGVcKrImucGyHsTYsYLX
 pBj0XC0+BiGEeENr0jw9SZiLqsplAgNA8g+vi07jBXUnBSmOi4ND+ravIFExkM1tzlyK/G
 YfboQAlTwwu8NSVgAiaMEOGluGtIaas=
Date: Thu, 31 Oct 2019 08:13:45 +0100
From: Borislav Petkov <bp@alien8.de>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH 1/2 RESEND v8] x86/kdump: always reserve the low 1M when
 the crashkernel option is specified
Message-ID: <20191031071345.GA17248@nazgul.tnic>
References: <20191031033517.11282-1-lijiang@redhat.com>
 <20191031033517.11282-2-lijiang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191031033517.11282-2-lijiang@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_001359_976049_A29CCD3F 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com,
 horms@verge.net.au, x86@kernel.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, dhowells@redhat.com, mingo@redhat.com,
 ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de, dyoung@redhat.com,
 d.hatayama@fujitsu.com, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Oct 31, 2019 at 11:35:16AM +0800, Lianbo Jiang wrote:
> Kdump kernel will reuse the first 640k region because the real mode
> trampoline has to work in this area. When the vmcore is dumped, the
> old memory in this area may be accessed, therefore, kernel has to
> copy the contents of the first 640k area to a backup region so that
> kdump kernel can read the old memory from the backup area of the
> first 640k area, which is done in the purgatory().
> 
> But, the current handling of copying the first 640k area runs into
> problems when SME is enabled, kernel does not properly copy these
> old memory to the backup area in the purgatory(), thereby, kdump
> kernel reads out the encrypted contents, because the kdump kernel
> must access the first kernel's memory with the encryption bit set
> when SME is enabled in the first kernel. Please refer to this link:
> 
> Bugzilla: https://bugzilla.kernel.org/show_bug.cgi?id=204793
> 
> Finally, it causes the following errors, and the crash tool gets
> invalid pointers when parsing the vmcore.
> 
> crash> kmem -s|grep -i invalid
> kmem: dma-kmalloc-512: slab:ffffd77680001c00 invalid freepointer:a6086ac099f0c5a4
> kmem: dma-kmalloc-512: slab:ffffd77680001c00 invalid freepointer:a6086ac099f0c5a4
> crash>
> 
> To avoid the above errors, when the crashkernel option is specified,
> lets reserve the remaining low 1M memory(after reserving real mode
> memory) so that the allocated memory does not fall into the low 1M
> area, which makes us not to copy the first 640k content to a backup
> region in purgatory(). This indicates that it does not need to be
> included in crash dumps or used for anything except the processor
> trampolines that must live in the low 1M.
> 
> Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
> Reported-by: kbuild test robot <lkp@intel.com>

Please do not merge a 0day bot fix with another patch of yours which
does not cause it in the first place. When you look at this patch alone,
what do you think the Reported-by tag means, if anything at all?

Also, it is not a "RESEND" if you change them. You can call them v8.1 or
whatever to denote that the change is small.

Also, do not send v9 or v8.1 or whatever, immediately but wait for other
reviews. You have sent these patches 4(!) times in this week alone. How
would you feel if I hammer your inbox with patches on a daily basis?

You can read

https://www.kernel.org/doc/html/latest/process/submitting-patches.html

in the meantime, especially section

"9) Don't get discouraged - or impatient"

while waiting.

Thx.

-- 
Regards/Gruss,
    Boris.

ECO tip #101: Trim your mails when you reply.
--

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
