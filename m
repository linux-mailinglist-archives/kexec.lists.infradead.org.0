Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00C5219051E
	for <lists+kexec@lfdr.de>; Tue, 24 Mar 2020 06:25:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kSKJ6gzyCcrjthRMFALP5TuPMJYm+88ZD5xXDSua21k=; b=eSfubioTXUIyqk
	e5MYJR2R7NcLO/aVIAQYX9MHqqwuH9JVd7h+Bxrq7EaWTELn9gSSw1km/nX8/A5GjRtZt2KNvwVFH
	fBqvKy2Yc8uqmIIsXcz3aingqpwIv6jZtsOfzlOYFsQhcnFsFU7XR6De45o09nbfZEJTxhGmh8/p5
	H5T3tuGbP7612B5lnmO+AjaeKjXwdPUXYh03DGGp+/YDXavjjzlGdj060OGvGKkhNFW36wBlRgOHP
	iqxxBcCFhl9YWLPrjqSAvuiDrQtk3F1TDu/1z8ysSMRmKX+/ejNlqHwC7/Y8Mw0pVLEKx+cAThM4p
	JQzg8lSOLLp9AXWOx5YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGc4R-0002SU-Al; Tue, 24 Mar 2020 05:25:47 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGc4J-0002Rh-2Z
 for kexec@lists.infradead.org; Tue, 24 Mar 2020 05:25:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1585027536;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=cTesaozoOrI+1EHAPeYeml3192G9TxzmBg6Vdzt7eXk=;
 b=MJwAaeBTOAgD1VDmis9U3lS7UOwp/UYrK89HO6zS3OVWNygwxrEDOinK21TFuMktKKpavj
 xxDghfnDNPjDxZTMWEqQSsfa+v/mOr1pAe+qPC6YAan/DJm71vJXVtaNDbHZEy75sBELyw
 4V/x2pM7YnrpH0SyjOuaP0D1qOypw0Y=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-266-SAsYHF-sPnOCgWyn5Uvo1A-1; Tue, 24 Mar 2020 01:25:32 -0400
X-MC-Unique: SAsYHF-sPnOCgWyn5Uvo1A-1
Received: by mail-qk1-f199.google.com with SMTP id b21so13630094qkl.14
 for <kexec@lists.infradead.org>; Mon, 23 Mar 2020 22:25:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6E6ghv96qxmeHlxhRr7uVa1kmvV4mqSsKvBwIPsDLY4=;
 b=rLBo+l04eRg/0oHlX5HtvXWFjGqL52VfMx2kTpHu1tGFmz/vJn5DybOraCopZXEf2L
 01VD3hKMYtj1BrWIxq72kGurbl0/KVk85d6a2F/aaJn7GRzGwJGj5X6I7TnNbgl29+jH
 eeXKnDcF7l6ucK/ZcopLDV4vlgSEt+bQL4+oldebtlso2c2LUGPIkRmnn+fazvfFL9Gm
 rTCI5hftNO3+dOGaiqSmW5CJgYAfsORIv37PMC4M7IzOZiHXEtAnBmWaZetaDRUQF+F4
 00EWT+qbbFJFEiqc6VsbN6XPXZAsJGDhUk0RNaiwIJoG01It6Vu7s+1tk14oczV4o+JY
 6F7g==
X-Gm-Message-State: ANhLgQ0w7e70HLoWlaz47WmZ1y9vryV5e+wosUsxgcszQqH0PZ0o9aQW
 j4pGXRf/N26SJFcYtCHp2HnWW4UQCoIx0LZdtSNQYSzmvv6oCseIiDGe8xUTorLfcLxfAbYt0zy
 xNifZxiaTlTamMiyxVqyaiYSpioQYoRQywmxx
X-Received: by 2002:ad4:4e21:: with SMTP id dm1mr6472979qvb.198.1585027531460; 
 Mon, 23 Mar 2020 22:25:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvRlowzHEkVQ5FMm7GNyAI4PIllzIK/Of4r1nt0BemATyY+HLBFpwkbxyjD9MkZv4B0v+zWn7KwZFSm2a8Javo=
X-Received: by 2002:ad4:4e21:: with SMTP id dm1mr6472964qvb.198.1585027531153; 
 Mon, 23 Mar 2020 22:25:31 -0700 (PDT)
MIME-Version: 1.0
References: <cb237c2f-94ea-dbd8-8d6f-54911baefc45@canonical.com>
 <CACi5LpMtVHOLDojyMwz+3GrL49TRiSTAkm+D_xeD8QR1+msR=A@mail.gmail.com>
 <20200302080935.GA8969@dhcp-128-65.nay.redhat.com>
 <CACi5LpNJVw_POqvmUD2fHWJkS=3bK4PzWCD_9Hs_K90aQ4gczw@mail.gmail.com>
 <7d76b7cf-8606-5fa6-e166-5de785bd3012@canonical.com>
 <5f338241-8842-18d0-21df-cfeb0826d725@canonical.com>
 <bec06a39472b31e0bb343dfb762ae827fb305f66.camel@infradead.org>
 <e21d3f34-afc3-8f3b-9f40-574aa5c00495@canonical.com>
 <2080da6e-770b-a69e-59b2-0f23813188db@canonical.com>
 <CACi5LpMkEnerJcL6r+-0__6OM8Dq_uFhtobFYJTEif6NX_guFg@mail.gmail.com>
 <2e1ed40e-7aaa-239f-8b1a-23dd7fa100f5@canonical.com>
In-Reply-To: <2e1ed40e-7aaa-239f-8b1a-23dd7fa100f5@canonical.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 24 Mar 2020 10:55:19 +0530
Message-ID: <CACi5LpPM6JNsTRN-GMusPe6Dht2yRoXV6X8ptVjmU2t98LXYHA@mail.gmail.com>
Subject: Re: About kexec issues in AWS nitro instances (RH bz 1758323)
To: "Guilherme G. Piccoli" <gpiccoli@canonical.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_222539_211543_0591C451 
X-CRM114-Status: GOOD (  25.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Guowen Shan <gshan@redhat.com>, Baoquan He <bhe@redhat.com>,
 Dave Young <dyoung@redhat.com>, kexec mailing list <kexec@lists.infradead.org>,
 Gavin Guo <gavin.guo@canonical.com>, pedro.principeza@canonical.com,
 David Woodhouse <dwmw2@infradead.org>, Vivek Goyal <vgoyal@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Guilherme,

On Mon, Mar 23, 2020 at 8:16 PM Guilherme G. Piccoli
<gpiccoli@canonical.com> wrote:
>
> On 22/03/2020 18:16, Bhupesh Sharma wrote:
> > Hello Guilherme,
> >
> > On Fri, Mar 20, 2020 at 9:10 PM Guilherme G. Piccoli
> > <gpiccoli@canonical.com> wrote:
> >
> > Thanks for writing again. I was caught up in trying several other
> > suggestions/code-snippets to further debug this.
> > I tried several combinations - turning iommu off, turning off swiotlb
> > in the kexec kernel and testing various combinations with
> > retain_initrd added to the kexec kernel's bootargs.
> >
> > But nothing seems to fix the nested repetitive kexec reboot attempts
> > on the aws t3 machines I have. It just becomes better on few instances
> > (i.e. the kexec reboots would survive around 10 nested repetitive
> > attempts), while on the other(s) the failure can be seen quite
> > frequently (approx ~3 kexec reboot attempts).
>
> Hi Bhupesh, thanks for the tests! Indeed, this problem is difficult to
> prevent with those parameters, and it's quite interesting to see how it
> may vary among instances.

Indeed.

> > [...]
> > This is a really good debug and resulting patch.
> > I ran almost ~60 kexec repetitive attempts last night and also
> > repeated the same today morning and
> > the issue seems to get fixed for me with upstream kernel 5.6.0-rc6+
> > with this patch.
> >
> > I am leaving a test running with RHEL kernel + this patch overnight
> > and will have more updates to share by tomorrow morning.
>
> Thanks a lot =)
> I couldn't fail to give due credit to my friend Gavin Shan for the great
> suggestion that resulted in the patch! Let me know your results with the
> patch Bhupesh, and your Tested-by on it is much appreciated.
>
>
> >
> >> Bhupesh, I've noticed that suddenly the Red Hat bugzilla got private -
> >
> > Oops. I will check.
> >
> >> is it okay to add me in CC list so I can see it?
> >
> > Sure. I tried doing it, but seems Bugzilla is not happy as it keeps
> > complaining that you are not registered on BZ,
> > I will try to find out internally how to get around the issue.
> >
>
> Great! If you need me to sign-up in Bugzilla, I can do it. Just let me
> know the steps and I'd be glad in doing that.

Yes, please. I checked internally. If you can sign-up for Bugzilla, I
can directly add you to the Cc field of the Bugzilla work-item.

> >> Thanks for all the collaboration, I hope the issue was figured and solved!
> >
> > Sure. Thanks a lot for your inputs and trying the suggestions I posted
> > on the Bugzilla ticket.
> > I will soon share an update with RHEL/Fedora kernel kexec tests with
> > this patch applied and also reply with a Tested-by for the upstream
> > patch in the relevant thread.
> >
> > Thanks,
> > Bhupesh
> >
>
> Thank you, I appreciate the tests and collaboration =)
> Cheers,

No problem. The good news is that two runs of approx. ~200 runs of
nested kexec reboots worked even with RHEL/Fedora + your patch on the
aws t3 instance for me.

So, this looks like a real good patch to have upstream. Thanks a lot
for sharing and working on it.

I will go ahead and add my Tested-by for the upstream patch as well.

Thanks for all your help,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
