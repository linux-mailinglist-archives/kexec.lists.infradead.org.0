Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B951417E786
	for <lists+kexec@lfdr.de>; Mon,  9 Mar 2020 19:51:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IWyuXRxmR+k+d2sRhcCA43b+o9Ez3aaC8WdZTPE5sow=; b=cNSoZNWg/8e/29
	XfrHjGcB3D+Id0WxXS2twGW2XyDsV47GJHOlINRMEoETatg+nq4n+0JnGsN/0j9Z4JVszcDgah6KG
	yiWH08dee9STPgPWniz7/pwnQhdYWOo1Uc0xLFhgJPal+gPJQyf7ozUS/VYkQ5i14MRikrNc6a56C
	4TjsQEGoRA/AaT5O1X2bQoWkHie6guvZJMKrhjs9ZSbsQcPTz/QUSGpfz2qhNPx7pnmAw1HWLiTDf
	mQDYAEeoqaWLrF0xYB9oSo3XKestCxxLazJzQ7LJx+arNRPXqlQZfAD6DEK5TRQCMWuf4JCpYUAtX
	i2uixpwi8cP1TMWiaHOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBNUq-0001of-QN; Mon, 09 Mar 2020 18:51:24 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBNUm-0001oA-EM
 for kexec@lists.infradead.org; Mon, 09 Mar 2020 18:51:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583779878;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=paEOkq09Y9OWfddhbYSpJxOvwSGj3uTCeqBCPtaePQE=;
 b=NAJ4kQtB5iZpUO72B12z+D5he3wgZOa4cm4192Jm5apXmL4UjX5m0NfryUVhBvkgDi+3wz
 afelzMkibByS60PxzYjU8xAkO1GK/JuZxGVXkNzQS38UuwZjlnUCjdOt7ImDdApnoELmUN
 knQA2CbkIuU+ceXACvAt2vPT2mR4+Sg=
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com
 [209.85.219.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-RvaygGhjP5aJhJes4zkQNw-1; Mon, 09 Mar 2020 14:51:16 -0400
X-MC-Unique: RvaygGhjP5aJhJes4zkQNw-1
Received: by mail-qv1-f71.google.com with SMTP id k1so6595025qvw.1
 for <kexec@lists.infradead.org>; Mon, 09 Mar 2020 11:51:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jYuKgnrEZI/pEXY7TH9xA1tG8Lxb+MCdpZvFc7K26tM=;
 b=fZsjSqObB0+M22cFLXsvHC2WUWyrduNqAvlxgZWxpWzHw418Q4eQsXpM2pFZ415tJ0
 m5TYhNfYxOZfQ26UgAxZ2u1JLsxiOcSHeIuy+VCR5BQF9RT6DGyE1uxteZpOB28IbrU6
 jz1iU3Wxa+q7+tvCq9iKf+O67GaMwyJElgDOd2JBFIdSyerOL1cd7WodzjudDkqG0LAV
 rneFz5UJ8P+FoiRD+5K0PZDYLJiyK7H8dJvthB0m7nucNMTUT5Qo3YUkhqY4BRyAh8Or
 DLvERAg4Lgw29Fw/9CTOg4QFCEpHFJdwqhuccKhjty4DoYx2bPfkcCAsTwtHQw6b56iG
 tihA==
X-Gm-Message-State: ANhLgQ2lanGO1psF7h31yXJJaj9KZc0psRVsas0HtvGP8179TX5qYCCC
 +bBb0N7zyZiTc/5T50VN6T5E9oh4NoD3FqFdzOJhj3+Z4SiKficriZKjuzUYvIkcmhxD3OCBofp
 sBgB4ZDff7Kr4xDBN+GAIo44jEnOeSbSxe7N+
X-Received: by 2002:a37:a44a:: with SMTP id n71mr14512951qke.210.1583779875872; 
 Mon, 09 Mar 2020 11:51:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuIUNytUCDSTAlzvlxVzc989FNP649rjGxzNbnKTksZqJoR3TA7n0lEbR81tn0ha4Dxa8LE5X4gx+dqEMz8gN4=
X-Received: by 2002:a37:a44a:: with SMTP id n71mr14512919qke.210.1583779875548; 
 Mon, 09 Mar 2020 11:51:15 -0700 (PDT)
MIME-Version: 1.0
References: <4F31C9D2-6F43-403A-ACC8-7209A33D6684@oracle.com>
In-Reply-To: <4F31C9D2-6F43-403A-ACC8-7209A33D6684@oracle.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Tue, 10 Mar 2020 00:21:03 +0530
Message-ID: <CACi5LpNjddawZJciUiSCOYNSwa+G_wN3E+oEz1pGpBJjPX1+oA@mail.gmail.com>
Subject: Re: QUESTION : dracut debugging for kdump
To: John Donnelly <john.p.donnelly@oracle.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_115121_173518_824AF28B 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
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

Hi John,

On Mon, Mar 9, 2020 at 10:38 PM John Donnelly
<john.p.donnelly@oracle.com> wrote:
>
> Hi kexec/kdump  team.
>
> I am not sure if this is the appropriate dlist to ask .  If not ,  I apologize .
>
>
> I am having difficulties mounting a iSCSI target under kdump .

We have had several known issues with iSCSI targets under kdump which
have been fixed, so just wanted to check which kexec-tools version you
are using: upstream or fedora?

Can you please share the output of:
$ kexec -v

> The target is discovered ,
>
> [ 154.118729] sd 2:0:0:0: [sda] Attached SCSI disk
> [ OK ] Found device ZFS_Storage_7350 4.
> Starting File System Check on /dev/...a-5ef4-4838-b5e7-dff852dfc673...
> [ OK ] Started File System Check on /dev/d...46a-5ef4-4838-b5e7-dff852dfc673.
> [ 275.766578] dracut-initqueue[420]: Warning: dracut-initqueue timeout - startinging
>
>
> The fsck step never finishes, and dracut timeout eventually drops into the rescue shell.
>
>
> I can see it is attempting to fsck root from the UUID :
>
>
> # blkid | grep b5
> /dev/sda4: UUID="fb01846a-5ef4-4838-b5e7-dff852dfc673" TYPE="xfs" PARTUUID="f8831f2d-b2c6-4b27-97db-0513e4d3fe42"
> 3:02
> " /dev/sda4 30G 3.5G 27G 12% /
>
>
> And I mount root manually and look around.
>
> # kdump:/# mkdir /mnt
> # kdump:/# mount /dev/sda4 /mnt
> [ 542.856035] SGI XFS with ACLs, security attributes, realtime, scrub, repair, no debug enabled
> [ 542.885016] XFS (sda4): Mounting V4 Filesystem
> [ 542.938507] XFS (sda4): Starting recovery (logdev: internal)
> [ 542.994720] XFS (sda4): Ending recovery (logdev: internal)
> [ 543.018918] xfs filesystem being mounted at /mnt supports timestamps until 2038 (0x7fffffff)
> kdump:/#
> kdump:/#
> kdump:/# chroot /mnt/ /usr/bin/bash
> bash-4.2#
>
>    Now my iSCSI  target is mounted as /mnt
>
>
> Is there a way start dracut so it stops BEFORE the fsck step  ?  Not after it fails ?

I think you can try using 'rd.break' dracut option:

       rd.break={cmdline|pre-udev|pre-trigger|initqueue|pre-mount|mount|pre-pivot|cleanup}
           drop to a shell on defined breakpoint

you can specify the same in the kdump bootargs, by modifying a system
configuration file (for e.g. its '/etc/sysconfig/kdump' on fedora/rhel
systems).

For example, you can use 'rd.break=cmdline' to drop to the dracut
shell to try and see if you can stop it before the 'fsck' step.

Thanks,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
