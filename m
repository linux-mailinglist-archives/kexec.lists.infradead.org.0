Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F37111D1AFA
	for <lists+kexec@lfdr.de>; Wed, 13 May 2020 18:26:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AZWwFPy8iqK7ivkfk7I554fW3Ikonzs5LTIi816Z3Y=; b=rjnBTCBuNyTd5U
	jYdYRoCjaiez+5qMtENj7HqkpQQ4ipRqQBqS8H7eWYwcjnLS3LpnHE7SVcfBz6gGYyvfmrgjYq6Ar
	2+AL5d3eNRw6baFvLJEO04Nr0wT4eYEo6AhCASaAbIR4YPRxcB38guwIgmMu+q+JmUOaFnY0R0cEx
	yFL+zTMAxP7A44BdQkBde9tEvC9hRnmMrffSJTB+5xa55+QTFYwg/Lx6ylQ83eZ3kPHlMIcBZtWHg
	7x+uHWLBMiM9Ptu9CKsyXLHL+VZEtNhHNNkIos2Mzp4N7YLG82ZstE08eDua99B7ViCQXaj2fe2Ge
	R9OkTYwaFXPZpyBMD2SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYuCw-0004LF-DN; Wed, 13 May 2020 16:26:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYuCs-0004Kl-K1
 for kexec@lists.infradead.org; Wed, 13 May 2020 16:26:08 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B0F52054F;
 Wed, 13 May 2020 16:26:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589387166;
 bh=gWgf3gSq6wvPZ0Lx/X3Ey44dHXev3t7FqVNRMYwxDk8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Q8U5ovSy/0apFGdAM690iiBY98+A/gBvKlCNOkc6rcR8Fsc+6G75KqMw8eeYppM8H
 9GXT9jA7DahB6giulShWeV5n16yCa8caS7N311SifogXd7aZC+rKFzPYl1oyqMtqhO
 iU8uV8K/Uws/tHhJoMyya1ivw2r9zdN/htJmXMDw=
Date: Wed, 13 May 2020 18:26:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Luis Chamberlain <mcgrof@kernel.org>
Subject: Re: [PATCH 2/3] security: add symbol namespace for reading file data
Message-ID: <20200513162604.GE1362525@kroah.com>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513152108.25669-3-mcgrof@kernel.org>
 <87k11fonbk.fsf@x220.int.ebiederm.org>
 <20200513161622.GS11244@42.do-not-panic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513161622.GS11244@42.do-not-panic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_092606_676146_0ED50144 
X-CRM114-Status: GOOD (  22.11  )
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
Cc: rafael@kernel.org, zohar@linux.ibm.com, dhowells@redhat.com,
 paul@paul-moore.com, nayna@linux.ibm.com, jmorris@namei.org,
 geert@linux-m68k.org, dan.carpenter@oracle.com, keescook@chromium.org,
 scott.branden@broadcom.com, selinux@vger.kernel.org,
 Josh Triplett <josh@joshtriplett.org>, viro@zeniv.linux.org.uk,
 skhan@linuxfoundation.org, eparis@parisplace.org, tglx@linutronix.de,
 stephen.smalley.work@gmail.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 "Eric W. Biederman" <ebiederm@xmission.com>, jeyu@kernel.org,
 linux-fsdevel@vger.kernel.org, linux-integrity@vger.kernel.org,
 bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 04:16:22PM +0000, Luis Chamberlain wrote:
> On Wed, May 13, 2020 at 10:40:31AM -0500, Eric W. Biederman wrote:
> > Luis Chamberlain <mcgrof@kernel.org> writes:
> > 
> > > Certain symbols are not meant to be used by everybody, the security
> > > helpers for reading files directly is one such case. Use a symbol
> > > namespace for them.
> > >
> > > This will prevent abuse of use of these symbols in places they were
> > > not inteded to be used, and provides an easy way to audit where these
> > > types of operations happen as a whole.
> > 
> > Why not just remove the ability for the firmware loader to be a module?
> > 
> > Is there some important use case that requires the firmware loader
> > to be a module?
> > 
> > We already compile the code in by default.  So it is probably just
> > easier to remove the modular support all together.  Which would allow
> > the export of the security hooks to be removed as well.
> 
> Yeah, that's a better solution. The only constaint I am aware of is
> we *cannot* change the name of the module from firmware_class since the
> old fallback sysfs loader depends on the module name. So, so long as we
> take care with that on built-in and document this very well, I think
> we should be good.
> 
> I checked the commit logs and this was tristate since the code was added
> upstream, so I cannot see any good reason it was enabled as modular.
> 
> Speaking with a *backports experience* hat on, we did have a use case
> to use a module for it in case a new feature was added upstream which
> was not present on older kernels. However I think that using a separate
> symbol prefix would help with that.
> 
> Would any Android stakeholders / small / embedded folks whave any issue
> with this?

Android has build in the firmware loading logic for a while now.  Well,
always, they have not had kernel modules for many years.  That is
changing but this logic is not getting moved to a kernel module as that
would just be silly :)

thanks,

greg k-h

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
