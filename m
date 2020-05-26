Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 873EA1E237A
	for <lists+kexec@lfdr.de>; Tue, 26 May 2020 16:00:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfITe3nuOkNsh7fTxXsrLwVKP3y19J2HORvUurg2Cs8=; b=cL4fdSbtEtOIDK
	fa2sqI3Ap9RgUW/+dTMGjuVowATeG4TtfFa2xuv6Yv0FAj4kl7OqZMY/KZzMtyCVDCZ+Ku2nJd/qt
	VIeB84Cxq2bo8K2CtKkJBMGqYfRChgQoOOWQ7SF2yv58C6vfD12SyI6ju5Sk2UsEu1grGegIb/Pwp
	fazHkAIIgGnLbhrFQ2pipG7V2jl68w9Y0cbc9cgRtphWVpXvMX0g9Z3aPe+ItUDMJiKpp37x58IK+
	NT9Du43By6COIZAIJ6mM/Jz9PuWlpivOtvt3XFYGz8x31Q0hRBfmurp+JDeIIBFx2qXuYRa7vx3qQ
	2jVE5Z+kyHsmTJ6/lmVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jda7j-0007dW-QR; Tue, 26 May 2020 14:00:07 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jda7J-0007Wg-Pr
 for kexec@lists.infradead.org; Tue, 26 May 2020 13:59:43 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3935DAD83;
 Tue, 26 May 2020 13:59:39 +0000 (UTC)
Date: Tue, 26 May 2020 15:59:35 +0200
From: Jiri Bohac <jbohac@suse.cz>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH] kexec: Do not verify the signature without the lockdown
 or mandatory signature
Message-ID: <20200526135935.ffkfulsjf7xrep63@dwarf.suse.cz>
References: <20200525052351.24134-1-lijiang@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200525052351.24134-1-lijiang@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_065941_992813_A3DB97BB 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: bhe@redhat.com, kexec@lists.infradead.org, jmorris@namei.org,
 mjg59@google.com, linux-kernel@vger.kernel.org, ebiederm@xmission.com,
 dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, May 25, 2020 at 01:23:51PM +0800, Lianbo Jiang wrote:
> So, here, let's simplify the logic to improve code readability. If the
> KEXEC_SIG_FORCE enabled or kexec lockdown enabled, signature verification
> is mandated. Otherwise, we lift the bar for any kernel image.

I agree completely; in fact that was my intention when
introducing the code, but I got overruled about the return codes:
https://lore.kernel.org/lkml/20180119125425.l72meyyc2qtrriwe@dwarf.suse.cz/

I like this simplification very much, except this part:

> +	if (ret) {
> +		pr_debug("kernel signature verification failed (%d).\n", ret);

...

> -		pr_notice("kernel signature verification failed (%d).\n", ret);

I think the log level should stay at most PR_NOTICE when the
verification failure results in rejecting the kernel. Perhaps
even lower.

In case verification is not enforced and the failure is
ignored, KERN_DEBUG seems reasonable.

Regards,

-- 
Jiri Bohac <jbohac@suse.cz>
SUSE Labs, Prague, Czechia


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
