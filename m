Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C111810A5D0
	for <lists+kexec@lfdr.de>; Tue, 26 Nov 2019 22:12:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8lXpSShYz3coOAvmRnYtfChkYviGYAngBqjeExPF5vo=; b=cIA/NamhzqqZTI
	r06wOXCv6p9wqBUkWei3cePuOWivb6cN0t6YeXH5jg/J990zYmaxIA7TzmYSV8wWQkbcBcEatuLBf
	zuhX+XVtOoz5NhtpjiOG8iQC6v6l3/RAfCVK9kucWjmwIAmobx5yqJWWt7C2A8+uMpnUmgLfsLAWs
	WnXoWlhClc4SxFwZYdjYsQSP+syE2V55GmsecZIQeZ+6oLJMoSYVNoGIrb8KJ38WJKYTH8DX/2FHM
	Vxk0idiiBZwgK1QfZhBuTC6NQAXjJK9ESvxWyqorgN0CegOh8CsSG7nCsp7x45cXORfmJHzUK+KnW
	+0W3VEoWMiKhsjBzm44A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZi85-000783-OB; Tue, 26 Nov 2019 21:12:13 +0000
Received: from us-smtp-1.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZi7y-00076v-Qr
 for kexec@lists.infradead.org; Tue, 26 Nov 2019 21:12:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574802721;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=DeeW5+7QTWtvbqGEns5tAaH62ySdJii7eV8BO650BbM=;
 b=NOnzoDGeuYFaKTywQXF6ExCjIg8Fjb4gK9aeXQ5T79/ap/KU97Y4chfqmM4auVKI1iwyAV
 6ehgHa4W5VNdVN0KpkeL7TvCLHikmUHUvjUU249/fgVzM5fc0KL7B2bNflUp6D3bUjv5Qt
 fx5zn5i+BZpY+jam1Pk0A6Z1ljn20MI=
Received: from mail-lj1-f197.google.com (mail-lj1-f197.google.com
 [209.85.208.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-367-l2ezuzODNiOI2RcKPWg4qQ-1; Tue, 26 Nov 2019 16:11:59 -0500
Received: by mail-lj1-f197.google.com with SMTP id y17so3920224ljm.16
 for <kexec@lists.infradead.org>; Tue, 26 Nov 2019 13:11:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DeeW5+7QTWtvbqGEns5tAaH62ySdJii7eV8BO650BbM=;
 b=C7c8F4B3iq0XxYR1o5d+FVKCXsJ0QKcUfenIRnbzNOgqwXipfzo3ACFU2uAa5YFTEc
 /wa0BmKQIvQecl7TscFksMkp4qi4QMIMjqYvxRGInKysgOPZhNToCDV0jG1X2t7B+NnE
 ML36DyG1a7oiSNEaP2KGlvl4cF230rM+6XC5cAejgQV6WAT8+TsJ8YbxlcR2J05tsS11
 0GdTiXp1xo4ITlYoArpuL2XITfpl+rPEYyFr9c6EKqXd5+W8iioe2mnwUABwEBP7q636
 JMw6/TUMStFq9A5360xdaKnS0G8tDcX6cqOxFmdTFUGQmLISKhMT4EZ0YR/a+1SN2wL0
 z55Q==
X-Gm-Message-State: APjAAAV7lI3DU4JjtMoW/lbCgaP4h6HfXmtNrjC1zxt4ME/fygvMSIh2
 e6DwzUxxkfc9eXH4JByc138q3y/Wue6SabAXMG6YQwSoNksIvKpdKCbBk/mltNq4KzqKnztHFL+
 ko4lJGQA+pXo0DNm+Mv8FUaACNO2wL9/Vu0Z+
X-Received: by 2002:a19:5f05:: with SMTP id t5mr3209287lfb.149.1574802717984; 
 Tue, 26 Nov 2019 13:11:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqw7L4roMjFcTBLc6s3aXEQFKQy8RIIl2w5CfQY8PckSbJCAPIUbNwoqK93AvUlgIgz37WAXTbphRP12v8KoRxc=
X-Received: by 2002:a19:5f05:: with SMTP id t5mr3209277lfb.149.1574802717714; 
 Tue, 26 Nov 2019 13:11:57 -0800 (PST)
MIME-Version: 1.0
References: <CAJ2QiJLBcmdVrmJmfKehadUzzUkmMsn8b2BxmGh7LHXzo7PtJw@mail.gmail.com>
In-Reply-To: <CAJ2QiJLBcmdVrmJmfKehadUzzUkmMsn8b2BxmGh7LHXzo7PtJw@mail.gmail.com>
From: Bhupesh Sharma <bhsharma@redhat.com>
Date: Wed, 27 Nov 2019 02:41:45 +0530
Message-ID: <CACi5LpPosB9TbVBoG8CVdax0e7pJjpZQUQF2ZB3LciNohXRraQ@mail.gmail.com>
Subject: Re: kexec-tools/vmcore-demsg: No program header covering vaddr
 0xffff000be7a00000found kexec bug?
To: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
X-MC-Unique: l2ezuzODNiOI2RcKPWg4qQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_131207_015512_F78B8ABF 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Prabhakar Kushwaha <pkushwaha@marvell.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Prabhakar,

On Tue, Nov 26, 2019 at 1:04 PM Prabhakar Kushwaha
<prabhakar.pkin@gmail.com> wrote:
>
> Hi All,
>
> I am facing issue below error with latest kexec-tools/vmcore-demsg tools.
>
> $ ./build/sbin/vmcore-dmesg /proc/vmcore
> No program header covering vaddr 0xffff000be7a00000found kexec bug?
>
> I am testing on AARM64 platform with following git repos.
> A) kexec tools:
> https://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git
> top commit: bd077966e2b9041c (kexec-tools: Fix conversion overflow
> when compiling on 32-bit platforms)
>
> B) Linux:git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> top commit: af42d3466bdc8f3980 (Linux 5.4-rc8)
>
> I am seeing similar issue in past also in couple of discussions. has
> it not fixed earlier or it keep arises with time to time
>
> Please suggest.

Thanks for reporting the issue.
I think the issue with the latest ARM64 kernel and kexec-tools is the
same as the makedumpfile, i.e. the PAGE_OFFSET calculation needs to be
dynamically done for 52-bit VA_BITS correctly as well.

I think the VA_BITS calculation via _stext symbol will not work well
for 52-bit case, because the 52nd and 48th bit are both set in such a
case  (I already have a conversation going on with the arm64
maintainers on how to get around this issue).

Until we agree on a formal approach with the arm64 miantainer, I will
try to send a patch (soon) to fix this kexec-tools issue in a generic
way (for 52-bit and 48-bit VA_BITS values).

Regards,
Bhupesh


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
