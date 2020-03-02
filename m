Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E349B17553C
	for <lists+kexec@lfdr.de>; Mon,  2 Mar 2020 09:09:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mZg049V7LTODs/mJKYJmeevwW3pI9zg84Llp/GgaLo=; b=i6QII4V4dspt0T
	FDfCByNgKTgztgAZo1fOef32FCeBDZ2DOdLwxBQQCncCvdVNh95ydnxZIs4XzTOHUXTHgkfu3CcMP
	tIeYEzwjwYbZGAQdNajSUdr138oA8eyKsNIW7Xl1OiazvMGAKZbJyD46D0HTxTSqvTuBQxQ9qLfi3
	h3Z6zCr+v/thPeogj/uaFzTIxDPuAA8Fhrq4cRLNXSqHGxrZUUEFoGLwhy33dZWHpzdZUfdeVpvg1
	C2w63CS/rLEzRgA9QtG0QqFvc9wter+perfriVfj6nbH/zK3fCF+7rI38pMsosBBuNiG9nUsO7NUD
	sWRM+Ayvtr2Dz5o+sKWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8g9B-0003Qa-L3; Mon, 02 Mar 2020 08:09:53 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8g98-0003Q1-Ee
 for kexec@lists.infradead.org; Mon, 02 Mar 2020 08:09:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583136587;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TxEx5X5RszRAhO584uMFiKrBOlXU3fDWwWCHuWKeiKA=;
 b=gcup0epZb8Kdn+87MPuzDEajm0BMtzPxxqZK7NeBOEoFpU2LEowd8SJO46Iwxvzz8fINyy
 q0H0hhh9gpVQw/FHIoGYvKAtohVHsDTubqpQecvPbM7EPlPAOmfynoaMlF1rzHERLRJP7A
 VjvGY7xcv2aFluRAuHEKAkIG+1NjSZM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-494-2uyiMPPZN-uOaxlsDFiMRw-1; Mon, 02 Mar 2020 03:09:43 -0500
X-MC-Unique: 2uyiMPPZN-uOaxlsDFiMRw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E2002100550E;
 Mon,  2 Mar 2020 08:09:41 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-12-158.pek2.redhat.com
 [10.72.12.158])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id D584B385;
 Mon,  2 Mar 2020 08:09:38 +0000 (UTC)
Date: Mon, 2 Mar 2020 16:09:35 +0800
From: Dave Young <dyoung@redhat.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
Subject: Re: About kexec issues in AWS nitro instances (RH bz 1758323)
Message-ID: <20200302080935.GA8969@dhcp-128-65.nay.redhat.com>
References: <cb237c2f-94ea-dbd8-8d6f-54911baefc45@canonical.com>
 <CACi5LpMtVHOLDojyMwz+3GrL49TRiSTAkm+D_xeD8QR1+msR=A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACi5LpMtVHOLDojyMwz+3GrL49TRiSTAkm+D_xeD8QR1+msR=A@mail.gmail.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_000950_568129_2C38199D 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: gshan@redhat.com, Baoquan He <bhe@redhat.com>,
 "Guilherme G. Piccoli" <gpiccoli@canonical.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Vivek Goyal <vgoyal@redhat.com>, Gavin Guo <gavin.guo@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On 03/02/20 at 12:20am, Bhupesh Sharma wrote:
> Hi Guilherme,
> 
> On Sat, Feb 29, 2020 at 10:37 PM Guilherme G. Piccoli
> <gpiccoli@canonical.com> wrote:
> >
> > Hi Bhupesh and Dave (and everybody CC'ed here), I'm Guilherme Piccoli
> > and I'm working in the same issue observed in RH bugzilla 1758323 [0] -
> > or at least, it seems to be the the same heh
> 
> Ok.
> 
> > The reported issue in my case was that the 2nd kexec fails on Nitro
> > instanced, and indeed it's reproducible. More than this, it shows as an
> > initrd corruption. I've found 2 workarounds, using the "new" kexec
> > syscall (by doing kexec -s -l) and keep the initrd memory "un-freed",
> > using the kernel parameter "retain_initrd".
> 
> I have a couple of questions:
> - How do you conclude that you see an initrd corruption across kexec?
> Do you print the initial hex contents of initrd across kexec?

I'm also interested if any of you can dump the initrd memory in kernel
printk log, and then save to somewhere to compare with the original
initrd content.

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
