Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F80EADCF
	for <lists+kexec@lfdr.de>; Thu, 31 Oct 2019 11:48:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/l9TGPNFeVEMhNDucsamkOc7N8F+/VBYvO0qc5mRFcQ=; b=l20QSBZlQqFGoQ
	hzen0rgyTscsDo3XfWBcoOYavY2KKDJ2b18M+R8kxUTMkwRxK73yNItaaSQYCEsnMEsvK2bWop0l6
	3x8ee6DSDVagVY/t3jCMz6Nn4AnvfYYL38rhtybr6PDEh9Skvnzd+4OHxKzt+ALrRCdP4h+cSqTQU
	JNBWVyWo7iBWG896UEbOBRQUK2wuHNrGL0+xZQMipulPXeIaGqIhDvGZzSctgBZvcQt5ykbJOzqd4
	VpoJYXwLmCkcvq2esmj8S7rQ2KeARTJICtxojIG4Ti/WXn5D04qliJCa2wChhSQptdmya/ixmkV7T
	0bR2ML+zEWrtpirFi4eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQ7zj-0005m2-Fk; Thu, 31 Oct 2019 10:47:59 +0000
Received: from mail.skyhub.de ([5.9.137.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQ7zg-0005lO-Eo
 for kexec@lists.infradead.org; Thu, 31 Oct 2019 10:47:58 +0000
Received: from nazgul.tnic (unknown [91.217.168.176])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 387141EC0CD1;
 Thu, 31 Oct 2019 11:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1572518869;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=hTysPbLoe/2KqpZjkjX3aRFBzExmpYnWMUSCHexYqlo=;
 b=R7XYfBumbxk3dFtMvEdSUWhepoOWP4p6T2VKlR743okyJkJ/l0fB9hWQDIuUdR5pHt+KQ9
 SK6oEoprNmbFve5Ek27jI0gRdccHPNEWGiAsSf9uoZ1adn7yNdVbUsfBrlDxk/Hvm0DqiT
 64nhCIJUt4yUqppUuhjtNdqmtoz5iHA=
Date: Thu, 31 Oct 2019 11:47:48 +0100
From: Borislav Petkov <bp@alien8.de>
To: lijiang <lijiang@redhat.com>
Subject: Re: [PATCH 1/2 RESEND v8] x86/kdump: always reserve the low 1M when
 the crashkernel option is specified
Message-ID: <20191031104748.GC21133@nazgul.tnic>
References: <20191031033517.11282-1-lijiang@redhat.com>
 <20191031033517.11282-2-lijiang@redhat.com>
 <20191031071345.GA17248@nazgul.tnic>
 <fe68b796-c483-20c4-623c-2671c52a3bf9@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fe68b796-c483-20c4-623c-2671c52a3bf9@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_034756_645702_684DDE3A 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [5.9.137.197 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [91.217.168.176 listed in zen.spamhaus.org]
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

On Thu, Oct 31, 2019 at 05:40:35PM +0800, lijiang wrote:
> Maybe it should be a separate patch to fix the old compile warnings as follow.
> And i should put the patch into this series.

Yes, maybe.

> commit d2091d1f4f67f1c38293b0e93fdbfefa766940cf (HEAD -> master)
> Author: Lianbo Jiang <lijiang@redhat.com>
> Date:   Thu Oct 31 15:48:02 2019 +0800
> 
>     kexec: Fix i386 build warnings that missed declaration of struct kimage
>     
>     Kbuild test robot reported some build warnings, please refer to the
>     Link below for details.

Explain here what the warnings are, why they trigger and how you're
fixing it. How a commit message should look like is also explained in
that document I pointed you at.

Refering to some link is not what we do in commit messages.

>     Add a declaration of struct kimage to fix these compile warnings.
>     
>     Fixes: dd5f726076cc ("kexec: support for kexec on panic using new system call")
>     Reported-by: kbuild test robot <lkp@intel.com>
>     Signed-off-by: Lianbo Jiang <lijiang@redhat.com>
>     Link: https://lkml.org/lkml/2019/10/30/833

*NEVER* use lkml.org or any other external URL for refering to mail
threads but *always* use our own

lkml.kernel.org/r/<Message-ID>

redirector. See other tip commits for an example.

> > You can read
> > 
> > https://www.kernel.org/doc/html/latest/process/submitting-patches.html
> > 
> > in the meantime, especially section
> > 
> > "9) Don't get discouraged - or impatient"
> > 
> > while waiting.
> 
> OK. Thanks.

And make sure to read that whole document and also have a look at the
process document

https://www.kernel.org/doc/html/latest/process/index.html

so that you can avoid such mistakes in the future.

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
