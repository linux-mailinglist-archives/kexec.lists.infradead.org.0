Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A06D1FD57A
	for <lists+kexec@lfdr.de>; Wed, 17 Jun 2020 21:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1wvukhmKEa5IVhhyEdv4uA/iTD3lO3+12LtvcbCL21w=; b=ZamIeZx6aCBuHZ
	OXqYmO7d9qoaGooL7xI5rDu809+w0pI+9jYLulCCUxflBIlHE7sMtI0QyP2OwD+yhIkR9fpR2tORc
	3KuVXrL0+SBeMeBpS5HOdgsRhZfZmOfTSAWBU1V4HMYCIe2SGz+RJgMNlizkPWLEQ09dCk+MTO8MS
	Uat7ApwjE2dWgGhfeqwTKeWZT2xdMU/0FDO/yJMjflnk+tL2OjC7gljwIw/6f5J1qLbqnzPYrSsFn
	IeMZZOD7xZpMARJkUPx09wR9pxqLEAZKJxOrmF+/0R9by6RiKsC/lD5iv45B46Pp371PUANixaHxK
	Fj0pM/g2SHf/q+PW+Ihw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jldsR-0002t6-9Y; Wed, 17 Jun 2020 19:37:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jldsL-0002sJ-4J
 for kexec@lists.infradead.org; Wed, 17 Jun 2020 19:37:34 +0000
Received: from X1 (nat-ab2241.sltdut.senawave.net [162.218.216.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F4C82073E;
 Wed, 17 Jun 2020 19:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592422651;
 bh=MmQpNycHMc+CvYJVky1PDDcVkBa9imkx5orsNbgASoE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=b3Th9T2SGaIyOvzLlpMjuoNQNJ0zBrBNSlo3mWaDNKJWd+iDi7X5yEfqXKi7xGfFc
 3BdLKznyEOdOe/MHQcBu42lX0p271ow9uSkR6pRuC4Cri6Vnu2LZi0Vqeq4sTR5Lmy
 Z4/uNda7jlXD4LRp6IV5JV5R3s4v8pLokrYfRYjc=
Date: Wed, 17 Jun 2020 12:37:31 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Lianbo Jiang <lijiang@redhat.com>
Subject: Re: [PATCH v2] kexec: Do not verify the signature without the
 lockdown or mandatory signature
Message-Id: <20200617123731.0dbb039a053a2ef610af59fb@linux-foundation.org>
In-Reply-To: <20200602045952.27487-1-lijiang@redhat.com>
References: <20200602045952.27487-1-lijiang@redhat.com>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_123733_187487_495C0C17 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: jbohac@suse.cz, bhe@redhat.com, kexec@lists.infradead.org,
 jmorris@namei.org, mjg59@google.com, linux-kernel@vger.kernel.org,
 ebiederm@xmission.com, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue,  2 Jun 2020 12:59:52 +0800 Lianbo Jiang <lijiang@redhat.com> wrote:

> Signature verification is an important security feature, to protect
> system from being attacked with a kernel of unknown origin. Kexec
> rebooting is a way to replace the running kernel, hence need be
> secured carefully.

I'm finding this changelog quite hard to understand,

> In the current code of handling signature verification of kexec kernel,
> the logic is very twisted. It mixes signature verification, IMA signature
> appraising and kexec lockdown.
> 
> If there is no KEXEC_SIG_FORCE, kexec kernel image doesn't have one of
> signature, the supported crypto, and key, we don't think this is wrong,

I think this is saying that in the absence of KEXEC_SIG_FORCE and if
the signature/crypto/key are all incorrect, the kexec still succeeds,
but it should not.

> Unless kexec lockdown is executed. IMA is considered as another kind of
> signature appraising method.
> 
> If kexec kernel image has signature/crypto/key, it has to go through the
> signature verification and pass. Otherwise it's seen as verification
> failure, and won't be loaded.

I don't know if this is describing the current situation or the
post-patch situation.

> Seems kexec kernel image with an unqualified signature is even worse than
> those w/o signature at all, this sounds very unreasonable. E.g. If people
> get a unsigned kernel to load, or a kernel signed with expired key, which
> one is more dangerous?
> 
> So, here, let's simplify the logic to improve code readability. If the
> KEXEC_SIG_FORCE enabled or kexec lockdown enabled, signature verification
> is mandated. Otherwise, we lift the bar for any kernel image.

I think the whole thing needs a rewrite.  Start out by fully describing
the current situation.  THen describe what is wrong with it, and why. 
Then describe the proposed change.  Or something along these lines.

The changelog should also make clear the end-user impact of the patch. 
In sufficient detail for others to decide which kernel version(s)
should be patched.  Your recommendations will also be valuable - which
kernel version(s) do you think should be patched, and why?

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
