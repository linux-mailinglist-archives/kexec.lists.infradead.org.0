Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D836410999D
	for <lists+kexec@lfdr.de>; Tue, 26 Nov 2019 08:34:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=47hj5LWv5MUP92BDomwWnkPYHdsscOMU8tVg9fc9zy4=; b=jUf
	+WugQhmuMboJJhDisCsR7HsptKEcCyWCMyZnl13AYXwQeH8A/p612eeaTMcvD20sIVNvHE61a9obN
	Zd9ccAJA1RvVzi7/luMiu8Xe07Ubmfdy82GUqV/N7/pBxHTGWiK1JZo/Qwr2HidEBFODCzWoxxH5X
	gQxJz9xxar8dEbFmmPrifEw6NT3IhgNpWXBA2owJx9Eddwf4hLWbEIsftwV3+1+vLVp98zCEPQJkD
	oBmTouKElkGexG9XeoDAvzU0koxrvH+f6k3ZQPY7HPKUl2LhM60KeuE2BzJrIVLbZ92LC5neqXBkj
	PZVkOJ54CROdO+2mlEyI80uB+uORWQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZVMY-0003U0-AX; Tue, 26 Nov 2019 07:34:18 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZVMV-0003Tg-AZ
 for kexec@lists.infradead.org; Tue, 26 Nov 2019 07:34:16 +0000
Received: by mail-il1-x143.google.com with SMTP id f6so12729265ilh.9
 for <kexec@lists.infradead.org>; Mon, 25 Nov 2019 23:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=42LQ/vAeQAVc+HIMHB/Y9Pk85iuGUepQQL+qsmama14=;
 b=FLPOU9oWNA9N+QPOL9KdSuLDipMyTVGknX6TUZbgQE/zqr7lbJhFTeuwCj85xc6GiD
 telo6O7SlqrOkar1rlQEv57caNi1xrz51g9B7oTt4kZvdAL/5c+zP+Q1+a6uwjL3xv+J
 qUBUNHUxDpskvmszNJEHiC9Vw8jagxelqC6AkrJyAFD078aUYhSQN1ftdz0intdlcvCj
 4+aqpER++cU9vakzFF6lOB3KbmgHTjfuulN44+vLedxrAcy6qdBra6xNvCMQkEu5IAC9
 jd8/w3q+fvFHiUSkDySEDdTrOWY++r/0d9An80dHdwNa4jPA9Lc3tmQmyvjv6DUagBgq
 90ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=42LQ/vAeQAVc+HIMHB/Y9Pk85iuGUepQQL+qsmama14=;
 b=mbN0cyNxJLrYZu4BaIjKwfV6zsJFDrVzPnG5SqdxQTwXwCOb1M1PLXGOEfWOkVazKw
 UaIx7lofUlnVW0UQJaRURCI5hQl+pwiyDQJjwT1lUACC/MAmpEuDQcNtR48gbiPsI//z
 OXspbLpXzDHdOvhHm/3C6lTxd68e+HvdWGqhTbdVAtsp2EjoWAw5uPGUhZ6r1QKAPfso
 ig5bbl37tHm4RuKo5QSNhHCcL7/WRCPZCJx937rblE1FeJkMhkKgbYHvb6iGc/n9cNXp
 stdIAPvPzo5oeGdRHMa0akjHyikMjRQmJx31hVcPq1umYWwkfJ8v7ohRt0GzmQ+Qnuag
 ZZLw==
X-Gm-Message-State: APjAAAXsAqtyylH28T1CfhAizeAlAgTVRsvpJlAKPI61Wt0fF078yk5m
 QYyCCIi71TZfBM7/Jf95mE4MNBMV/2Az2rIcnqS+lHOm690=
X-Google-Smtp-Source: APXvYqxlzempOwmbz210gzVFXOb0LZKFj7PD8mXcHpL1e1dYD9ySV/XBY1cHK27c/sncVPoiVgHSBKFWc2KceH7swhY=
X-Received: by 2002:a92:6f05:: with SMTP id k5mr36229617ilc.98.1574753653786; 
 Mon, 25 Nov 2019 23:34:13 -0800 (PST)
MIME-Version: 1.0
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Tue, 26 Nov 2019 13:04:02 +0530
Message-ID: <CAJ2QiJLBcmdVrmJmfKehadUzzUkmMsn8b2BxmGh7LHXzo7PtJw@mail.gmail.com>
Subject: kexec-tools/vmcore-demsg: No program header covering vaddr
 0xffff000be7a00000found kexec bug?
To: kexec mailing list <kexec@lists.infradead.org>, 
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_233415_387956_2B88F883 
X-CRM114-Status: UNSURE (   5.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (prabhakar.pkin[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi All,

I am facing issue below error with latest kexec-tools/vmcore-demsg tools.

$ ./build/sbin/vmcore-dmesg /proc/vmcore
No program header covering vaddr 0xffff000be7a00000found kexec bug?

I am testing on AARM64 platform with following git repos.
A) kexec tools:
https://git.kernel.org/pub/scm/utils/kernel/kexec/kexec-tools.git
top commit: bd077966e2b9041c (kexec-tools: Fix conversion overflow
when compiling on 32-bit platforms)

B) Linux:git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
top commit: af42d3466bdc8f3980 (Linux 5.4-rc8)

I am seeing similar issue in past also in couple of discussions. has
it not fixed earlier or it keep arises with time to time

Please suggest.

--pk

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
