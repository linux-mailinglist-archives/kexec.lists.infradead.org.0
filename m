Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4C7F140495
	for <lists+kexec@lfdr.de>; Fri, 17 Jan 2020 08:47:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22s6PQnfxQO7uMSeS/H1tBwb9QQm7EeZAr0uTuq5jXA=; b=ZmmgZreDDLn7dr
	wuI/HSug0viubVjAg2/pn3x2btvbQrgx5Cqfiui80zi2rwbqVUQyMp25ItCb6sMMeYhU22mgC6iHD
	RVih8c4U4W+KXuT4vDl3MCzghGSqw9fdV0rKcryzOxtP5KLdjfq5jYCyda0BHRbyq74dXlyyNIttS
	33PDvpBo5o+tfXMHUZELoo0ueSvIPGKmrm1t+U5NvaGN5YlAO05fNCBwyXWRJ7vL8ZLqSRb5AWfub
	62bFlAyHcy5fmVXo3R/YNFTqKaysW/1hfk7bPlmONDCwoNhMvT8dvwFY/7FuzR3p71hDjo0iw/YJU
	F5fayMZWNNt1quyJbogw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isMMG-0001ND-8M; Fri, 17 Jan 2020 07:47:56 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isMMA-0001Mp-Vx
 for kexec@lists.infradead.org; Fri, 17 Jan 2020 07:47:55 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 398E4AAA6;
 Fri, 17 Jan 2020 07:47:47 +0000 (UTC)
Date: Fri, 17 Jan 2020 08:47:46 +0100
From: Michal Hocko <mhocko@suse.com>
To: Pingfan Liu <kernelfans@gmail.com>, Dan Williams <dan.j.williams@intel.com>
Subject: Re: [PATCH] mm/sparse: reset section's mem_map when fully deactivated
Message-ID: <20200117074746.GF19428@dhcp22.suse.cz>
References: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
 <20200116075000.GM19428@dhcp22.suse.cz>
 <CAFgQCTuG6K3nbKDjp3SJFLNqsx2gaC_TGWcgL0vzDcD_Gv7VdA@mail.gmail.com>
 <CAPcyv4iOQHrZ1c13vNN_UqVyKu5O5zqrMvdMHbLHmCjPW6a=Pw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPcyv4iOQHrZ1c13vNN_UqVyKu5O5zqrMvdMHbLHmCjPW6a=Pw@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_234751_175873_3CD59B44 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>,
 David Hildenbrand <david@redhat.com>,
 Kexec Mailing List <kexec@lists.infradead.org>, Linux-MM <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Thu 16-01-20 23:14:02, Dan Williams wrote:
> On Thu, Jan 16, 2020 at 10:23 PM Pingfan Liu <kernelfans@gmail.com> wrote:
> >
> > On Thu, Jan 16, 2020 at 3:50 PM Michal Hocko <mhocko@suse.com> wrote:
> > >
> > > On Thu 16-01-20 11:01:08, Pingfan Liu wrote:
> > > > When fully deactivated, it is meaningless to keep the value of a section's
> > > > mem_map. And its mem_map will be reassigned during re-added.
> > > >
> > > > Beside this, it breaks the user space tool "makedumpfile", which makes
> > > > assumption that a hot-removed section having mem_map as NULL.
> > >
> > > We used to do that before ba72b4c8cf60 ("mm/sparsemem: support
> > > sub-section hotplug"). Dan was this an intentional change?
> > I do not know the purpose of this. But the change just leave section
> > start pfn in fully deactivated section_mem_map, and not used any more.
> 
> Not intentional, IIRC at the time I had convinced myself that the
> value would always be translated by sparse_decode_mem_map(), so I
> thought it could be hiding NULL de-references.  I don't see any harm
> in the patch.

Thanks for the confirmation. It would be great to have this in the
changelog.

-- 
Michal Hocko
SUSE Labs

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
