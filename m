Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A15D1D1AAF
	for <lists+kexec@lfdr.de>; Wed, 13 May 2020 18:09:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Oy0c2tRvD8TyCZ0uzslbiDLgD2ZwZN0V1lQ3NKHOAII=; b=PPh24N30tv7g76
	uSMZWAFi0DF/2lZelhGSIR0/p/amzbpSVmFz73lGijVjwbYh01iNF0Ek02ZADUaBw7AA4WEjaS2k6
	uyGwTSwH6hnrsLQY05NUQijUDF3YeNgZWfLcUDHC3vjW9iskANVt8zoPKOqL3HJaxV/IjSkNbBW+Z
	jo7BJcXKroXfz4bAH2e4pxc3kK4qaolkvKuXmEP1mFvLj1SkiyYA+svWxhskPryyRn9KF3lEtQzAj
	IBliGONumXZYJIdpCTdJv1/rPngUhk29OR/iXTSGzfB8O0b7/2aJlZsP4HA/PELhlab5qckuE23fN
	GkZT75Rlyx2Nqv/bxt0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYtx0-0000G9-71; Wed, 13 May 2020 16:09:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYtwx-0000Fp-3a
 for kexec@lists.infradead.org; Wed, 13 May 2020 16:09:40 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB670205CB;
 Wed, 13 May 2020 16:09:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589386179;
 bh=WdqE4cKf0ccXinlbg1MvpbxgyN4LOmP75On1HjwnySE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jCsO6gbqEaPkje+ceZ0NpYvOXh4pFINJxnLiCkUnjFcYlrkB/1tFYRbX/+8YCbglc
 RvqicPTHZwK14lZl9OdlxuC8F6HA4xisy00wtjjz5GKlPatRkgcBrlpI3oY8eMBOLK
 +2YqkwukULXM8ZIENDPPAlJaQwfu+wMaKaXJQhgI=
Date: Wed, 13 May 2020 18:09:36 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH 2/3] security: add symbol namespace for reading file data
Message-ID: <20200513160936.GC1362525@kroah.com>
References: <20200513152108.25669-1-mcgrof@kernel.org>
 <20200513152108.25669-3-mcgrof@kernel.org>
 <87k11fonbk.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87k11fonbk.fsf@x220.int.ebiederm.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_090939_166738_3139AED9 
X-CRM114-Status: GOOD (  12.54  )
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
 Luis Chamberlain <mcgrof@kernel.org>, paul@paul-moore.com, nayna@linux.ibm.com,
 jmorris@namei.org, geert@linux-m68k.org, dan.carpenter@oracle.com,
 keescook@chromium.org, scott.branden@broadcom.com, selinux@vger.kernel.org,
 viro@zeniv.linux.org.uk, skhan@linuxfoundation.org, eparis@parisplace.org,
 tglx@linutronix.de, stephen.smalley.work@gmail.com, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-security-module@vger.kernel.org,
 jeyu@kernel.org, linux-fsdevel@vger.kernel.org,
 linux-integrity@vger.kernel.org, bauerman@linux.ibm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 10:40:31AM -0500, Eric W. Biederman wrote:
> Luis Chamberlain <mcgrof@kernel.org> writes:
> 
> > Certain symbols are not meant to be used by everybody, the security
> > helpers for reading files directly is one such case. Use a symbol
> > namespace for them.
> >
> > This will prevent abuse of use of these symbols in places they were
> > not inteded to be used, and provides an easy way to audit where these
> > types of operations happen as a whole.
> 
> Why not just remove the ability for the firmware loader to be a module?

I agree, it's been a mess of build options to try to keep alive over
time.

> Is there some important use case that requires the firmware loader
> to be a module?

I don't think so anymore.

> We already compile the code in by default.  So it is probably just
> easier to remove the modular support all together.  Which would allow
> the export of the security hooks to be removed as well.

Agreed.

thanks,

greg k-h

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
