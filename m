Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3336118EC8A
	for <lists+kexec@lfdr.de>; Sun, 22 Mar 2020 22:17:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rRELAK9s2zQ3iRm3UHXiNFGySjZiu1HHTmhSFDUmcJ0=; b=t74JDiV5ROTr+5
	QH99uzcytyI+g1G7hiNZ3tOXfhOCFWKNHLl7sm96Jivzvw5MGiYDrSw8YTLcXPG1UncnJh2uSPXah
	o00SlhnUMmJjpboa0xe+BF9jm1mSysKImcx5BIigf2GcOdYhUVQJs7wg8EunLrceV4YPgTtewleXp
	gEo2IdfzOR43KbXVaxrnNGjlumQ3aa//QCLnrU3at7OTQ+8F59SfrtTAD9bEV6I4eiHvpNXuww82g
	f9VkLAHu4BPbGULCVXaaeQvM250djiNdcewYHCq3p4yI0JH6fN9NltBu4IpM162KUipouCrQdGdJr
	c7+fh+zjxgiRbZxc39jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jG7y4-0006j2-Id; Sun, 22 Mar 2020 21:17:12 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jG7xx-0006iT-Mi
 for kexec@lists.infradead.org; Sun, 22 Mar 2020 21:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584911821;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=eHLmjOQ920byhtpHwEuCdzQUYFmEvLtBICbF7Rq1MAw=;
 b=d5W6RVvcLC/lmwZY8oifxv/wqoy3x2j8qZQYv40+xtAjDpsRBcshRahI8xz+Bym1MDEKWB
 zGhI1yH80+TffbHIvuF/1AMdsOqNQiQoYm9Rt2/NI8QWjYkoGZP4Qbh83OKq2u0wfVHSJV
 ypzxSKv9tPa+aL72P54xEQyzzJlq7oI=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-344-2tHxJsV2M5qObKIWICOImw-1; Sun, 22 Mar 2020 17:16:57 -0400
X-MC-Unique: 2tHxJsV2M5qObKIWICOImw-1
Received: by mail-qk1-f199.google.com with SMTP id z17so10874486qki.18
 for <kexec@lists.infradead.org>; Sun, 22 Mar 2020 14:16:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DXIJoxHp4TvUHZ3JTwp4l4comq+ya9N17rsqEvy6kiE=;
 b=NChvtoIYo+1bnXapYmV+IqvZZIT9sXVoXnt+3SNC09OTgOoH0MextfQEH1u52B0MT1
 5nGnR482dlUaQyoq7ljnK302LCluaAONKTDLitNVDNj4+ZMB57uhLeSpYpRwn8m9aYQb
 d71/h5hSp4IPvxBLL8Itx3q4sLJtOI0Uyu/2SWpDqTBZInx4Kb+3zCeaby5Vz6891R2r
 S//qiiI8ILZk/2WpYTl3/aiwZ/AiIE11nu2MzSHMcZXHcSbX7y1y30ewRh3uTXR4be+L
 vZB6uWYTL55qejsZ+NB+r+VGvYDq9fTPDgpYHvYDk0LYM8XI8NjlK7wHmu4ihHocOYlE
 XaYQ==
X-Gm-Message-State: ANhLgQ1jz+Yl5KdNSt2kM9A0Lh76io+TApF1ojQlITe6xTcRyVh0EiZU
 Xgi2l5ZjffLCJBr+vn9r40XZwUALZG2dSEL8vzi0bRw3BXcKqsXDlN/4yYlsIr9e9Z2gnZDOqe9
 hIqxV6avFRk4dRllR1UCDRMYbt3cXa2lsVzPB
X-Received: by 2002:a37:b305:: with SMTP id c5mr18180070qkf.213.1584911817145; 
 Sun, 22 Mar 2020 14:16:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vudOG0vjJn5qtN+RpBOLST8HoZNoVSEFlD84LmkWLl+x2tlfzhoVy81LqeE7vnML3XHmxMa2IfemUvwSJgxsLI=
X-Received: by 2002:a37:b305:: with SMTP id c5mr18180054qkf.213.1584911816857; 
 Sun, 22 Mar 2020 14:16:56 -0700 (PDT)
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
In-Reply-To: <2080da6e-770b-a69e-59b2-0f23813188db@canonical.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Mon, 23 Mar 2020 02:46:45 +0530
Message-ID: <CACi5LpMkEnerJcL6r+-0__6OM8Dq_uFhtobFYJTEif6NX_guFg@mail.gmail.com>
Subject: Re: About kexec issues in AWS nitro instances (RH bz 1758323)
To: "Guilherme G. Piccoli" <gpiccoli@canonical.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_141705_945802_E4396763 
X-CRM114-Status: GOOD (  20.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Hello Guilherme,

On Fri, Mar 20, 2020 at 9:10 PM Guilherme G. Piccoli
<gpiccoli@canonical.com> wrote:

Thanks for writing again. I was caught up in trying several other
suggestions/code-snippets to further debug this.
I tried several combinations - turning iommu off, turning off swiotlb
in the kexec kernel and testing various combinations with
retain_initrd added to the kexec kernel's bootargs.

But nothing seems to fix the nested repetitive kexec reboot attempts
on the aws t3 machines I have. It just becomes better on few instances
(i.e. the kexec reboots would survive around 10 nested repetitive
attempts), while on the other(s) the failure can be seen quite
frequently (approx ~3 kexec reboot attempts).

> Well, it seems we have some good results with this patch [0] - the idea
> behind the issue is that ena network driver has no PCI shutdown()
> handler, which would be called to gently quiesce the device before the
> kexec. The PCI stack in this case clears the master bit of the device
> configuration space, effectively stopping all the DMA transactions. But
> then, when the system boots the kexec'ed kernel, the network device
> firmware may send a memory write regarding that stopped DMA transaction
> (that is now invalid), corrupting some random kernel memory area.
>
> I've ran 1000 kexecs tests with mainline (5.6-rc5) + this patch and no
> failures were observed. Also, I'm running a test with Ubuntu 5.3 kernel
> + this patch and achieved > 450 runs now, with no failures (test is
> ongoing).
>
> I've tried to dump the initrd content (could be useful now to identify
> the corruption signature, maybe matching some ena admin queue periodic
> task) but I had trouble collecting the dmesg in case of failure. It gets
> huge and requires a big ramoops allocation, which unfortunately prevents
> the issue from happening (I guess the corruption ends-up happening in
> the ramoops reserved area, not initrd area anymore).

This is a really good debug and resulting patch.
I ran almost ~60 kexec repetitive attempts last night and also
repeated the same today morning and
the issue seems to get fixed for me with upstream kernel 5.6.0-rc6+
with this patch.

I am leaving a test running with RHEL kernel + this patch overnight
and will have more updates to share by tomorrow morning.

> Bhupesh, I've noticed that suddenly the Red Hat bugzilla got private -

Oops. I will check.

> is it okay to add me in CC list so I can see it?

Sure. I tried doing it, but seems Bugzilla is not happy as it keeps
complaining that you are not registered on BZ,
I will try to find out internally how to get around the issue.

> Thanks for all the collaboration, I hope the issue was figured and solved!

Sure. Thanks a lot for your inputs and trying the suggestions I posted
on the Bugzilla ticket.
I will soon share an update with RHEL/Fedora kernel kexec tests with
this patch applied and also reply with a Tested-by for the upstream
patch in the relevant thread.

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
