Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC3F1C9C94
	for <lists+kexec@lfdr.de>; Thu,  7 May 2020 22:42:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mce/Jaz5fjrEWYLX7S1i3F/5YdJqNMUcdHiatHzl3kE=; b=gI/mnfF7OHyEtC
	0jAxGKr67HACJzGdHc7hDU4Ea3BBR/ifHXjd7OvyXgXbxJIiRR39jGM1cjKlm5WF1ZuoRXVDN34gZ
	pdMH/09iONug7dR/oWRpbQ0shv2bCk4+jIoHq8+5rTkP49RrwcZEWs8y+3UcVd9L0KK4LF/LF2VwO
	3f0XgfDbAzj4RA0z+JywsUnAUfdStABVL00pocdxb8OUQF/sYuxjX/SqmX9RdEQ8CKM5RUSeGQ4bH
	srbUgaC8M4+JHnRLlHVlyuaoTlGPFsWpNvWJb2M4v5+Gt3Jh9qGVqFkz9fqPL/gS5y3Pit3mfj17i
	q5elxQdYqGFRKjJd/EFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWnLs-00011x-TG; Thu, 07 May 2020 20:42:40 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWnLp-00011E-Ah
 for kexec@lists.infradead.org; Thu, 07 May 2020 20:42:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1588884155;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=b8a0Z2antnJYCUF8WBh734GS5zKFlaHhrNwslLNb//k=;
 b=bNLUp0g0HLmzd7uor8Ih39/U74xgYvAjFSPnB+yzgpopEG4+SC8D9N9/MuTnO+e/oEWMCM
 cygr5GhWjQaUg0ccJAGgcnIrGmlr0pE0M/YyWQAILW3YoRt1UhRXaPOqwmZklVpRpiMRaa
 jaiKAkDcevUMcZJZ8/4E61bn+azwy4w=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-AT7T8A5AMTS2CeTivjxVYw-1; Thu, 07 May 2020 16:42:31 -0400
X-MC-Unique: AT7T8A5AMTS2CeTivjxVYw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0944580183C;
 Thu,  7 May 2020 20:42:29 +0000 (UTC)
Received: from optiplex-lnx (unknown [10.3.128.26])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 63D8019C4F;
 Thu,  7 May 2020 20:42:22 +0000 (UTC)
Date: Thu, 7 May 2020 16:42:19 -0400
From: Rafael Aquini <aquini@redhat.com>
To: Qian Cai <cai@lca.pw>
Subject: Re: [PATCH] kernel: add panic_on_taint
Message-ID: <20200507204219.GJ205881@optiplex-lnx>
References: <20200506222815.274570-1-aquini@redhat.com>
 <C5E11731-5503-45CC-9F72-41E8863ACD27@lca.pw>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <C5E11731-5503-45CC-9F72-41E8863ACD27@lca.pw>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_134237_447482_AA62FBFB 
X-CRM114-Status: GOOD (  17.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>, Baoquan He <bhe@redhat.com>,
 linux-doc@vger.kernel.org, Jonathan Corbet <corbet@lwn.net>,
 kexec@lists.infradead.org, LKML <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, dyoung@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, May 06, 2020 at 10:50:19PM -0400, Qian Cai wrote:
> 
> 
> > On May 6, 2020, at 6:28 PM, Rafael Aquini <aquini@redhat.com> wrote:
> > 
> > Analogously to the introduction of panic_on_warn, this patch
> > introduces a kernel option named panic_on_taint in order to
> > provide a simple and generic way to stop execution and catch
> > a coredump when the kernel gets tainted by any given taint flag.
> > 
> > This is useful for debugging sessions as it avoids rebuilding
> > the kernel to explicitly add calls to panic() or BUG() into
> > code sites that introduce the taint flags of interest.
> > Another, perhaps less frequent, use for this option would be
> > as a mean for assuring a security policy (in paranoid mode)
> > case where no single taint is allowed for the running system.
> 
> Andrew, you can drop the patch below from -mm now because that one is now obsolete,
> 
> mm-slub-add-panic_on_error-to-the-debug-facilities.patch
>
Please, don't drop it yet. I'll send a patch to get rid of the bits,
once this one gets accepted, if it gets accepted.

-- Rafael 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
