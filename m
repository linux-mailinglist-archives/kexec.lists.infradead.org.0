Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F024FEBD
	for <lists+kexec@lfdr.de>; Mon, 24 Jun 2019 03:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QejU5i4Jh+5q1LpFp4CdZpZyizUd05NDq4wfD0KsuoY=; b=Y4ShGqszO/1g3u
	Lh/4cJYu+OcrVQ2pcMUozgO5yCODFyHOMNy7QRpnCwRQCFMKw6GiKv9LU+DkqomY3CbNgrkN+752q
	u1wUwwvque7QgyzkobqBSx81ABcOpr3LP3kRSl181xI8QGZ3iX5IPhdiAvlW4YMFMZpu7txuvmcYi
	spj1IdB49Kd4m7IJU75arvhjgVvTQzyzeLhGgwuL4VNbZrfILclMtI9CMMucZbklth5cMSXiHvhzB
	vPG6dOqpLwx8YP0eMUJ/egn1OdOE5N7AtXtx6k86pFxDW1DQ6/P7E3aWbZlZqCjDRHFmqIRMyChOr
	Rsre8umO4A3C4sj/l+fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfEA8-00066j-Eh; Mon, 24 Jun 2019 01:52:52 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfEA1-00065I-F0
 for kexec@lists.infradead.org; Mon, 24 Jun 2019 01:52:46 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CB2E6C04959F;
 Mon, 24 Jun 2019 01:52:23 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-23.pek2.redhat.com
 [10.72.12.23])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3A55310018F9;
 Mon, 24 Jun 2019 01:52:14 +0000 (UTC)
Date: Mon, 24 Jun 2019 09:52:06 +0800
From: Dave Young <dyoung@redhat.com>
To: Matthew Garrett <mjg59@google.com>
Subject: Re: [PATCH V31 07/25] kexec_file: Restrict at runtime if the kernel
 is locked down
Message-ID: <20190624015206.GB2976@dhcp-128-65.nay.redhat.com>
References: <20190326182742.16950-1-matthewgarrett@google.com>
 <20190326182742.16950-8-matthewgarrett@google.com>
 <20190621064340.GB4528@localhost.localdomain>
 <CACdnJut=J1YTpM4s6g5XWCEs+=X0Jvf8otfMg+w=_oqSZmf01Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACdnJut=J1YTpM4s6g5XWCEs+=X0Jvf8otfMg+w=_oqSZmf01Q@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Mon, 24 Jun 2019 01:52:28 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_185245_543457_22870543 
X-CRM114-Status: GOOD (  25.31  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jiri Bohac <jbohac@suse.cz>, Linux API <linux-api@vger.kernel.org>,
 kexec@lists.infradead.org, James Morris <jmorris@namei.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 LSM List <linux-security-module@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 06/21/19 at 01:18pm, Matthew Garrett wrote:
> On Thu, Jun 20, 2019 at 11:43 PM Dave Young <dyoung@redhat.com> wrote:
> >
> > On 03/26/19 at 11:27am, Matthew Garrett wrote:
> > > From: Jiri Bohac <jbohac@suse.cz>
> > >
> > > When KEXEC_SIG is not enabled, kernel should not load images through
> > > kexec_file systemcall if the kernel is locked down.
> > >
> > > [Modified by David Howells to fit with modifications to the previous patch
> > >  and to return -EPERM if the kernel is locked down for consistency with
> > >  other lockdowns. Modified by Matthew Garrett to remove the IMA
> > >  integration, which will be replaced by integrating with the IMA
> > >  architecture policy patches.]
> > >
> > > Signed-off-by: Jiri Bohac <jbohac@suse.cz>
> > > Signed-off-by: David Howells <dhowells@redhat.com>
> > > Signed-off-by: Matthew Garrett <mjg59@google.com>
> > > Reviewed-by: Jiri Bohac <jbohac@suse.cz>
> > > cc: kexec@lists.infradead.org
> > > ---
> > >  kernel/kexec_file.c | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> > >
> > > diff --git a/kernel/kexec_file.c b/kernel/kexec_file.c
> > > index 67f3a866eabe..a1cc37c8b43b 100644
> > > --- a/kernel/kexec_file.c
> > > +++ b/kernel/kexec_file.c
> > > @@ -239,6 +239,12 @@ kimage_file_prepare_segments(struct kimage *image, int kernel_fd, int initrd_fd,
> > >               }
> > >
> > >               ret = 0;
> > > +
> > > +             if (kernel_is_locked_down(reason, LOCKDOWN_INTEGRITY)) {
> > > +                     ret = -EPERM;
> > > +                     goto out;
> > > +             }
> > > +
> >
> > Checking here is late, it would be good to move the check to earlier
> > code around below code:
> >         /* We only trust the superuser with rebooting the system. */
> >         if (!capable(CAP_SYS_BOOT) || kexec_load_disabled)
> >                 return -EPERM;
> 
> I don't think so - we want it to be possible to load images if they
> have a valid signature.

I know it works like this way because of the previous patch.  But from
the patch log "When KEXEC_SIG is not enabled, kernel should not load
images", it is simple to check it early for !IS_ENABLED(CONFIG_KEXEC_SIG) && 
kernel_is_locked_down(reason, LOCKDOWN_INTEGRITY)  instead of depending
on the late code to verify signature.  In that way, easier to
understand the logic, no?

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
