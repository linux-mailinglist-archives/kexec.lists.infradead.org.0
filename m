Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B56431DAF38
	for <lists+kexec@lfdr.de>; Wed, 20 May 2020 11:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQdzvB8VsohpYagMt0ZZrADKVH/LXBuBzBuATNbMw0w=; b=giiWRAa6Ty9WEP
	AV5vvHDkByDjptQrbN0DpO5D9JplH3PjttL2bSehjklvwp4cP5TCN+Ngv60H1z/uTdhLcJyPdt34N
	6LSrGcnzCVcBiF55pjzcvxs0aeYVR6RdH+jP9kY1qhon9YMwAnXqqqMqpm96njGEBm1hEUV6jW1Bj
	LRuGrc8nz0ebZvl1tfdnkesZzDZWMhgyMC6fJXiojxfvcTtJS/rj2qDCyAk6Ev4Rc9LAjcMjbP/Q7
	q/NRJ1Cck2hpMzd6TQpgsPKHlNQMf/zok32Td0wNdw80tEoQv0yKHpGtUwogtKj2aJ45Km2PFOQMJ
	tom7anPtN46lYIWjTfDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLL9-0003sm-Ru; Wed, 20 May 2020 09:48:43 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLL6-0003rn-5F
 for kexec@lists.infradead.org; Wed, 20 May 2020 09:48:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589968119;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=wpd1XgqS+on5KAHh5sZLVRwtFA9YQca65tKtlXZA2os=;
 b=I0n0ifLzvIxBZbCwwmRz6SiGAz5z6m0GrcA1JJkbxPglZCAtKisZHc5ttj3HyCmtmtG3zt
 /WZyAI+LGZldYJcBVEJjSON8eoTL82XCaLJ2zKssHdaJM3Rmr9mka8JCxK6ex2ul4Fr7CE
 lgwK24NWw13M7P+hJSXgVIuurm5Zb64=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-157-xkI0fkMXN5ObdsgU6-QH9A-1; Wed, 20 May 2020 05:48:37 -0400
X-MC-Unique: xkI0fkMXN5ObdsgU6-QH9A-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 10832474;
 Wed, 20 May 2020 09:48:36 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-148.pek2.redhat.com
 [10.72.12.148])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 98BED5D9CA;
 Wed, 20 May 2020 09:48:33 +0000 (UTC)
Date: Wed, 20 May 2020 17:48:29 +0800
From: Dave Young <dyoung@redhat.com>
To: Baoquan He <bhe@redhat.com>
Subject: Re: [PATCH] MAINTAINERS: add files related to kdump
Message-ID: <20200520094829.GA21486@dhcp-128-65.nay.redhat.com>
References: <20200520080557.13260-1-bhe@redhat.com>
 <20200520091440.GA5052@dhcp-128-65.nay.redhat.com>
 <20200520094359.GV5029@MiWiFi-R3L-srv>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520094359.GV5029@MiWiFi-R3L-srv>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_024840_281920_923934C0 
X-CRM114-Status: GOOD (  13.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: akpm@linux-foundation.org, kexec@lists.infradead.org,
 linux-kernel@vger.kernel.org, vgoyal@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 05/20/20 at 05:43pm, Baoquan He wrote:
> On 05/20/20 at 05:14pm, Dave Young wrote:
> > Hi Baoquan,
> > On 05/20/20 at 04:05pm, Baoquan He wrote:
> > > Kdump is implemented based on kexec, however some files are only
> > > related to crash dumping and missing, add them to KDUMP entry.
> > > 
> > > Signed-off-by: Baoquan He <bhe@redhat.com>
> > > ---
> > >  MAINTAINERS | 5 +++++
> > >  1 file changed, 5 insertions(+)
> > > 
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index 83cf5c43242a..2f9eefd33114 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -9251,6 +9251,11 @@ L:	kexec@lists.infradead.org
> > >  S:	Maintained
> > >  W:	http://lse.sourceforge.net/kdump/
> > >  F:	Documentation/admin-guide/kdump/
> > > +F:	fs/proc/vmcore.c
> > > +F:	include/linux/crash_core.h
> > > +F:	include/linux/crash_dump.h
> > > +F:	include/uapi/linux/vmcore.h
> > > +F:	kernel/crash.*
> > 
> > ls kernel/crash.*
> > ls: cannot access 'kernel/crash.*': No such file or directory
> > 
> > But ls kernel/crash*
> > kernel/crash_core.c  kernel/crash_dump.c
> 
> Is below patten ok? Surely kernel/crash* is also OK to me. Thanks.
> 
> F:	kernel/crash_*.c

Yes, looks good, thanks!

Acked-by: Dave Young <dyoung@redhat.com>

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
