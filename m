Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C2F520C6
	for <lists+kexec@lfdr.de>; Tue, 25 Jun 2019 04:52:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4p2bfkHgVG5VrId1JvfH7+7fMupjBNwnOq2q8fPLuk=; b=cRR5Ss3fNxrmjQ
	ztR2ALwCkAH+OGHu73nkQvd4Vq8c1xzJxgua/jydkaOlJ0gmH1adzvi90T1GVGxalXhIFcQQe7RLt
	xG68uVa1lKbUqM7mOWgr3UCK4vObr8z86zhDwvAlhIkqQLmEBxRWHE/WJNu0ebqHve2gqns2l2wPV
	exs4Tq2bvuEDnyP6cA3Hq9+D4LyNW3F7nXxzahuGcvK5ficU7EJH7X088wR83FfkPXG1xYSxbqSZV
	0bywZ2jrZRMHaUDYQQKnjumhF82+1ItrFTV/fosRJYTjV1ag8nLUhqTJ8lzu7FUnF4wotuXRkIckT
	IoGgHCTfTvDUw7+yKmig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfbYt-0006bP-Am; Tue, 25 Jun 2019 02:51:59 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfbYq-0006az-9e
 for kexec@lists.infradead.org; Tue, 25 Jun 2019 02:51:57 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 93E3159473;
 Tue, 25 Jun 2019 02:51:55 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-89.pek2.redhat.com
 [10.72.12.89])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 298936085B;
 Tue, 25 Jun 2019 02:51:51 +0000 (UTC)
Date: Tue, 25 Jun 2019 10:51:48 +0800
From: Dave Young <dyoung@redhat.com>
To: Matthew Garrett <mjg59@google.com>
Subject: Re: [PATCH V31 07/25] kexec_file: Restrict at runtime if the kernel
 is locked down
Message-ID: <20190625025148.GA4024@dhcp-128-65.nay.redhat.com>
References: <20190326182742.16950-1-matthewgarrett@google.com>
 <20190326182742.16950-8-matthewgarrett@google.com>
 <20190621064340.GB4528@localhost.localdomain>
 <CACdnJut=J1YTpM4s6g5XWCEs+=X0Jvf8otfMg+w=_oqSZmf01Q@mail.gmail.com>
 <20190624015206.GB2976@dhcp-128-65.nay.redhat.com>
 <CACdnJusPtYLdg7ZPhBo=Y5EsBz6B+5M2zYscBrLcc89oNnPkdQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACdnJusPtYLdg7ZPhBo=Y5EsBz6B+5M2zYscBrLcc89oNnPkdQ@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Tue, 25 Jun 2019 02:51:55 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_195156_359840_F1FF2B5B 
X-CRM114-Status: GOOD (  19.29  )
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

On 06/24/19 at 02:06pm, Matthew Garrett wrote:
> On Sun, Jun 23, 2019 at 6:52 PM Dave Young <dyoung@redhat.com> wrote:
> >
> > On 06/21/19 at 01:18pm, Matthew Garrett wrote:
> > > I don't think so - we want it to be possible to load images if they
> > > have a valid signature.
> >
> > I know it works like this way because of the previous patch.  But from
> > the patch log "When KEXEC_SIG is not enabled, kernel should not load
> > images", it is simple to check it early for !IS_ENABLED(CONFIG_KEXEC_SIG) &&
> > kernel_is_locked_down(reason, LOCKDOWN_INTEGRITY)  instead of depending
> > on the late code to verify signature.  In that way, easier to
> > understand the logic, no?
> 
> But that combination doesn't enforce signature validation? We can't
> depend on !IS_ENABLED(CONFIG_KEXEC_SIG_FORCE) because then it'll
> enforce signature validation even if lockdown is disabled.

Ok, got your point. still something could be improved though, in the switch
chunk, the errno, reason and IS_ENABLED(CONFIG_KEXEC_SIG_FORCE) etc is
not necessary for this -EPERM case.

/* add some comment to describe the behavior */
if (ret && security_is_locked_down(LOCKDOWN_KEXEC)) {
	ret = -EPERM;
	goto out;
}

Thanks
Dave

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
