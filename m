Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEB417EA03
	for <lists+kexec@lfdr.de>; Mon,  9 Mar 2020 21:29:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++oV0h6iJWAca1tTGTi3WJgJfDtHD0ShVldA3xaovD8=; b=BYNVmqZNWBqJuG
	WJTNpHMJQsQfNORas6QJDZpFwiglp2/Ej31mjcEYz4YAvimjG+K30MrudQc+dm91uINC/UufGMsVC
	bnw7L0mcUpGattFFpkBJj7iNf8+WBRAlSnJF/y+MkJB5/zKfbgXSKfbZeaK551qRDlpO4K4j3FKb5
	fi9usuJ27R/LvO7ipk4WG9r8zZgN20v4v8rN53cgzge5b0tx68PCZVefahXczkDLWxp3tT0CGcG97
	mx/KZFFzTaMTntx6oGAaEBURfbC4NYPaTaVnHgJckpwkm29cZB5M+zDPJw6woe1kCZvZx0vpl7Q3g
	GSwRibuxpmXzozAmfPdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBP1v-0005s1-Hc; Mon, 09 Mar 2020 20:29:39 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBP1r-0005rU-Jj
 for kexec@lists.infradead.org; Mon, 09 Mar 2020 20:29:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583785772;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sFtfXKaO5dHHnrVqAzMtiOpYsW3GULY9rurlkRHiG1I=;
 b=YTKUI58KeeEiDXYwJsAdZrU3oDkiZ/3u98OWmRWRNg3P8rJ+P56wwiGuR3utqs1xWsI3aA
 ek4E0TMsNrhdY+MJM+oX3NsMykV5BbUVtDc136nXt5Mf6A71hKWDhTIDMKFa2QE1IFYV02
 edLKwyU3Zo/MJ94spX+2IPRzlH9xrF0=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-336-BeaUV8CsOLGosoZOWWb7tA-1; Mon, 09 Mar 2020 16:29:30 -0400
X-MC-Unique: BeaUV8CsOLGosoZOWWb7tA-1
Received: by mail-qk1-f197.google.com with SMTP id l27so8173039qkl.0
 for <kexec@lists.infradead.org>; Mon, 09 Mar 2020 13:29:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4FCuxy5vHgCAKVpQ26tyakIQ5jwScNSELKKIF8GiL6Y=;
 b=XEmoHB1zZiUWmZ+GTWvDhA7B8uEdyBbMa2UZ/wZufrTitO+xbAaV21YEu/GJKMoq0f
 /eGRzQvqR0mp0rR3Wy3vpAkUb0ilcnyAZJOqD+huH3aRScKybMJjTqP2HFAUFsPwyBJ6
 Bd3YP9pqB8ou7xo4dsb530+lJipw7SEbFyU1b0VhMftucIOE6QX9wD9QJJIn8pm1KgUh
 H4PzDKPKV5ie2Hq8j2emdoPpRBv1jEfywprTFTT4MmarOsnUVX4mUzNY5/3pbuJA2dkj
 xqHM3DU5FsyuqyNiF5tWi+FjYsStu+3/JEPx4Yd3qiKRPKtNxq6FNuHe1S+w4NMbBf08
 JxDA==
X-Gm-Message-State: ANhLgQ0OLovwdvjfBssxbp6foVFdPPNohZcorJrG1OfW4XgevjjQZHAH
 Cue+QeYXoAEyze5hCEWMllD4YjKzAMqedYmzpTYPU51LMq3a0QDLhw2Y2sZ2496t9zBiHMKSXqJ
 +DqjbezYXjgryPJImn7XcwakUTGhhsuy+LSUp
X-Received: by 2002:a0c:f6c7:: with SMTP id d7mr15645654qvo.153.1583785770058; 
 Mon, 09 Mar 2020 13:29:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuvZey0inFCz2zv0mYoXvs0z78fTBMbD528b91LebaFCIRt8ojxEyQ4xZN0QADhpI0yqtJ9+uxIELPtR8OGFLU=
X-Received: by 2002:a0c:f6c7:: with SMTP id d7mr15645633qvo.153.1583785769662; 
 Mon, 09 Mar 2020 13:29:29 -0700 (PDT)
MIME-Version: 1.0
References: <4F31C9D2-6F43-403A-ACC8-7209A33D6684@oracle.com>
 <CACi5LpNjddawZJciUiSCOYNSwa+G_wN3E+oEz1pGpBJjPX1+oA@mail.gmail.com>
 <EC9FD3E5-B439-45E6-AC24-06D27731C71A@oracle.com>
In-Reply-To: <EC9FD3E5-B439-45E6-AC24-06D27731C71A@oracle.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 10 Mar 2020 01:59:16 +0530
Message-ID: <CACi5LpPtwczAnRdXr-Y9KKq_2j1qe1LjcVP_HgGwgfE8KtR=Ew@mail.gmail.com>
Subject: Re: QUESTION : dracut debugging for kdump
To: John Donnelly <john.p.donnelly@oracle.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_132935_729824_32924F8E 
X-CRM114-Status: GOOD (  20.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kexec mailing list <kexec@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Mar 10, 2020 at 1:18 AM John Donnelly
<john.p.donnelly@oracle.com> wrote:
>
>
>
> > On Mar 9, 2020, at 1:51 PM, Bhupesh Sharma <bhsharma@redhat.com> wrote:
> >
> > Hi John,
> >
> > On Mon, Mar 9, 2020 at 10:38 PM John Donnelly
> > <john.p.donnelly@oracle.com> wrote:
> >>
> >> Hi kexec/kdump  team.
> >>
> >> I am not sure if this is the appropriate dlist to ask .  If not ,  I apologize .
> >>
> >>
> >> I am having difficulties mounting a iSCSI target under kdump .
> >
> > We have had several known issues with iSCSI targets under kdump which
> > have been fixed, so just wanted to check which kexec-tools version you
> > are using: upstream or fedora?
> >
> > Can you please share the output of:
> > $ kexec -v
>
> # kexec -v
> kexec-tools 2.0.15
> /usr/sbin/kexec
> # rpm -qf   `which kexec `
> kexec-tools-2.0.15-33.0.9.el7.x86_64

Ok, so it seems to me that you are using a RHEL-7 kexec-tools version
for x86_64.
I am not sure if this list is an appropriate forum for the same.

I would suggest that you can look at a newer RHEL-7 kexec-tools
version to try (which have several kexec-tools iSCSI issues fixed), or
search the RH Bugzilla for iSCSI related issues and fixes (for
example: <https://bugzilla.redhat.com/show_bug.cgi?id=1566331>).

If you suspect that this could be a new/regression issue, I would
suggest that you open a new BZ against the RHEL-7 kexec-tools
component, so that someone from RH can help you with it.

> >> The target is discovered ,
> >>
> >> [ 154.118729] sd 2:0:0:0: [sda] Attached SCSI disk
> >> [ OK ] Found device ZFS_Storage_7350 4.
> >> Starting File System Check on /dev/...a-5ef4-4838-b5e7-dff852dfc673...
> >> [ OK ] Started File System Check on /dev/d...46a-5ef4-4838-b5e7-dff852dfc673.
> >> [ 275.766578] dracut-initqueue[420]: Warning: dracut-initqueue timeout - startinging
> >>
> >>
> >> The fsck step never finishes, and dracut timeout eventually drops into the rescue shell.
> >>
> >>
> >> I can see it is attempting to fsck root from the UUID :
> >>
> >>
> >> # blkid | grep b5
> >> /dev/sda4: UUID="fb01846a-5ef4-4838-b5e7-dff852dfc673" TYPE="xfs" PARTUUID="f8831f2d-b2c6-4b27-97db-0513e4d3fe42"
> >> 3:02
> >> " /dev/sda4 30G 3.5G 27G 12% /
> >>
> >>
> >> And I mount root manually and look around.
> >>
> >> # kdump:/# mkdir /mnt
> >> # kdump:/# mount /dev/sda4 /mnt
> >> [ 542.856035] SGI XFS with ACLs, security attributes, realtime, scrub, repair, no debug enabled
> >> [ 542.885016] XFS (sda4): Mounting V4 Filesystem
> >> [ 542.938507] XFS (sda4): Starting recovery (logdev: internal)
> >> [ 542.994720] XFS (sda4): Ending recovery (logdev: internal)
> >> [ 543.018918] xfs filesystem being mounted at /mnt supports timestamps until 2038 (0x7fffffff)
> >> kdump:/#
> >> kdump:/#
> >> kdump:/# chroot /mnt/ /usr/bin/bash
> >> bash-4.2#
> >>
> >>   Now my iSCSI  target is mounted as /mnt
> >>
> >>
> >> Is there a way start dracut so it stops BEFORE the fsck step  ?  Not after it fails ?
> >
> > I think you can try using 'rd.break' dracut option:
> >
> >       rd.break={cmdline|pre-udev|pre-trigger|initqueue|pre-mount|mount|pre-pivot|cleanup}
> >           drop to a shell on defined breakpoint
> >
>
>   Thanks for the hint !  I will try these.

Ok.

Regards,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
