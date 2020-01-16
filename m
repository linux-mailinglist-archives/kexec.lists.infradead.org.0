Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1715F13D5EA
	for <lists+kexec@lfdr.de>; Thu, 16 Jan 2020 09:27:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmRb32R9pxS8z10ZlXVBTtCP+zns1S4TnSsyLK4cGTo=; b=O4vj9GQT5qJi4T
	gTArJTJjXezZcIzJkf0N5I4PRX2fis2Vn2JKLG7du8eKjaa0N/5z8COK34HQG2xKrqiJi/Gm2KRIY
	A1Mr6Fgp5GJChixYyjAMmBW3niJwvU+yzHHHUhGiQLb1xDPc3cKp5BebNE1X4rsaEa5CYzVnnfd+5
	TQnMEF+PbQbfvxi7mHEUfRVovjP+2/Nv8BbBwyh+xqyYGXfRplR2QRkUdlgfCZEn+7c71eB90Qzuk
	3KAeqqzmGYw/LZ4ILqWEMZNcmCF+8ktHuUPjaIdJXM/B0W8R560E5eqctMdizM5I8z1uP+kRG9cjn
	/QH6EAOXliNYl3lYP49g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is0Uj-0005kb-84; Thu, 16 Jan 2020 08:27:13 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is0Ua-0004Ob-U3
 for kexec@lists.infradead.org; Thu, 16 Jan 2020 08:27:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1579163102;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=B0rYzhQRc5mza2bd3EIWULLn19LobKoUgN0bWmQtIhM=;
 b=ECNCO10nGSEo5DAQPFol1/gcxD7KrEwjVqj6UgBJv0SiBvWd9LyPwkee9Kyt7+zcO+eMJl
 zxwRO3NSabO4DqAY7yJnyCcsDWraUEP2BF0/iDpn8wBct2hG+6JSAeXYrJZSVHKAsY05/n
 rxw6KFWDAt6MEWQpDXEl8vGBi06Jebk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-sDh67BIBPS-G-Sxckns2CA-1; Thu, 16 Jan 2020 03:24:59 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 00F31183B541;
 Thu, 16 Jan 2020 08:24:58 +0000 (UTC)
Received: from localhost (ovpn-12-41.pek2.redhat.com [10.72.12.41])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3B0B819C5B;
 Thu, 16 Jan 2020 08:24:54 +0000 (UTC)
Date: Thu, 16 Jan 2020 16:24:51 +0800
From: Baoquan He <bhe@redhat.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH] mm/sparse: reset section's mem_map when fully deactivated
Message-ID: <20200116082451.GC26758@MiWiFi-R3L-srv>
References: <1579143668-27941-1-git-send-email-kernelfans@gmail.com>
 <97ab281f-d038-d40c-648a-e0085a906dcf@redhat.com>
 <6cfd834a-72cc-656a-3954-40b37db5a66f@redhat.com>
MIME-Version: 1.0
In-Reply-To: <6cfd834a-72cc-656a-3954-40b37db5a66f@redhat.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: sDh67BIBPS-G-Sxckns2CA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_002705_045078_71B3928F 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kazuhito Hagio <k-hagio@ab.jp.nec.com>, kexec@lists.infradead.org,
 Pingfan Liu <kernelfans@gmail.com>, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 01/16/20 at 09:14am, David Hildenbrand wrote:
> On 16.01.20 09:06, David Hildenbrand wrote:
> > On 16.01.20 04:01, Pingfan Liu wrote:
> >> When fully deactivated, it is meaningless to keep the value of a section's
> >> mem_map. And its mem_map will be reassigned during re-added.
> >>
> >> Beside this, it breaks the user space tool "makedumpfile", which makes
> >> assumption that a hot-removed section having mem_map as NULL.
> >>
> >> The bug can be reproduced on IBM POWERVM by "drmgr -c mem -r -q 5" ,
> >> trigger a crash, and save vmcore by makedumpfile
> > 
> > Are you using an up-to-date makedumfile and did kdump.service properly
> > get reloaded on the udev events? I remember that this works.
> > 
> > makedumpfile will not dump memory sections that a) are not marked
> > offline (SECTION_IS_ONLINE) - after offlining b) are not part of an
> > iomem resource - after memory unplug.

Makedumpfile seems to only check SECTION_MARKED_PRESENT. Then the NULL
memmap will fail vmcore dumping, I guess.

> > 
> > 
> > The current code makes sure that sparse_decode_mem_map() will return NULL.
> > 
> 
> ... but it's only used at this very place. I think we should add a
> Fixes: tag, although this might be fixed as well in makedumpfile (so
> people are aware that patch broke something)

Agree, it's worth fixing it too in makedumpfile side to enhance.


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
