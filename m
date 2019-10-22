Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F21F3E03AE
	for <lists+kexec@lfdr.de>; Tue, 22 Oct 2019 14:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6hge5Ym6aGFA0WblbSuAjF5IhbUs7lpO5cD0L9YhCFU=; b=ZfrvDY4KyzMXu7
	byKABI9jpZVRC0EnCeCrtRDpVVMXvqPsw/sUSFhXRWvVIxWfh3aPXPoQkvv4mFHSDdpH2TCuJTBHk
	ruzWKU1cDNxqCbxgzKoNHumCXkl1knLNhxXvEBtx4JBSfRwIYNR9TydKMYw7/kY3/UWREbBB75Ofp
	y5eAmL2sHhKleREvC1IGSolpMH6jNtR8qgFPzdS+cTTGF7lz5lTKjSdcC8R14lvMN/QeVGW1cB0nU
	1pRnMgFargLzhTGiYyHHATqPmHCZghTU/CSJpZE5MWPHP1adXSGXUQuqfQlSXKKPwP+fMOwACn9PI
	AO+epGrf2a5jbH4TECJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMt4t-0007Om-KL; Tue, 22 Oct 2019 12:15:55 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMt4p-0007O6-VP
 for kexec@lists.infradead.org; Tue, 22 Oct 2019 12:15:53 +0000
Received: from zn.tnic (p200300EC2F0D77000D5BF9E7EE486C9A.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0d:7700:d5b:f9e7:ee48:6c9a])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 39BE61EC0A85;
 Tue, 22 Oct 2019 14:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1571746547;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=WEsstjL+927k0W9vkkctJFIzvZ1Hzz2SfZi16ucZgXQ=;
 b=DXOYKsYKz65K7naianpJguPN8bAtA8ZQLKscfbWcVT9zKFfJQLzuTKSZ8W5MVroWHnQIT3
 jH8iFo4FxzRuexKN/2cuYJQAGXTWbTWejkZciq8YgNCgKn/gQu3biRsfHqCev9Oze0fB2S
 5mBJyZLAkdc1QTmQj0E2tEfLFac2bpQ=
Date: Tue, 22 Oct 2019 14:15:41 +0200
From: Borislav Petkov <bp@alien8.de>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH 3/3 v4] x86/kdump: clean up all the code related to the
 backup region
Message-ID: <20191022121541.GC31700@zn.tnic>
References: <20191017094347.20327-1-lijiang@redhat.com>
 <20191017094347.20327-4-lijiang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017094347.20327-4-lijiang@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_051552_160502_51E8024A 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: jgross@suse.com, Thomas.Lendacky@amd.com, bhe@redhat.com, x86@kernel.org,
 kexec@lists.infradead.org, linux-kernel@vger.kernel.org, dhowells@redhat.com,
 mingo@redhat.com, ebiederm@xmission.com, hpa@zytor.com, tglx@linutronix.de,
 dyoung@redhat.com, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 05:43:47PM +0800, Lianbo Jiang wrote:
> When the crashkernel kernel command line option is specified, the
> low 1MiB memory will always be reserved, which makes that the memory
> allocated later won't fall into the low 1MiB area, thereby, it's not
> necessary to create a backup region and also no need to copy the first
> 640k content to a backup region.
> 
> Currently, the code related to the backup region can be safely removed,
> so lets clean up.
> 
> Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
> ---
>  arch/x86/include/asm/kexec.h       | 10 ----
>  arch/x86/include/asm/purgatory.h   | 10 ----
>  arch/x86/kernel/crash.c            | 87 ++++--------------------------
>  arch/x86/kernel/machine_kexec_64.c | 47 ----------------
>  arch/x86/purgatory/purgatory.c     | 19 -------
>  5 files changed, 11 insertions(+), 162 deletions(-)

That's a diffstat one cannot object to nowadays. :)

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
