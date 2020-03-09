Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB92117E911
	for <lists+kexec@lfdr.de>; Mon,  9 Mar 2020 20:48:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnYEi14C5aCclVH/rcj5wqkB+dqW6MlExpZ94nFQBeY=; b=o8fk2HHjZQmJPQ
	pOGY2f1Dg0Fdh2C7lQIloRUga0p3Yrb1H6Whz0bh78+nR/Uob+If46Qw1OhKcF+OeaMYrq5DZmVFQ
	sA5GWJK8iaXvmy+XYFaB1n1HyjexCfeoHGralYr2XLgnc/daVnnOCu91IdHnUhTKtXgZXaUlpULzy
	KBO7iN9wfdIpqYPKoDctvS5hSzKdQU/OVXmFvb+dsDzn4iHB4koRafWEQ8khbH0o+eCz0h91zErnR
	mR5BlRF27cAMU+iaV89R/RFQGBEO+HqFDrE55aA0oSdI10Z9pk+eXKLx68yczFF1OWm+JzgwfQogT
	6AmB6WSeoAs0eVXhDoCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBONe-0006w6-EW; Mon, 09 Mar 2020 19:48:02 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBONb-0006vc-RD
 for kexec@lists.infradead.org; Mon, 09 Mar 2020 19:48:01 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 029JiKFv027542;
 Mon, 9 Mar 2020 19:47:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2020-01-29; bh=Idje8zYZl+M5FkEye38SuML134m/hjDWJHcq/gHEO28=;
 b=qoQtvjsBDZVo7DDRvZv3bpETFGfjPTaWxDneIEUVcYSmNbAP5LbyFAZHOwbPuW/2xsO/
 zh0rcfZHVNvklDM3TMbZOG6qUAyjmTRHrQLLsk0vVi1YKIjNf496SpMraOJ0jdkwJwoO
 6PrJJgC23oAMzQ4xkWsD+WibcMAc+TjL3+z5tyjAA0cLotxCtLNU5CtOCjNvPBvwq0AR
 93bPEaz6sdWiJvex7TgPt5iYgUSxdKWzwFDXLSWy/f+Xwinn03LbkkOl2PHTs09/W2cc
 oes4KUDGbNPRt5QvU/M1mzwOhm/CuGhEYUFesHaLl7TBwhdyjlFRTnDO6SZ9j4HWPbCg Fg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by userp2130.oracle.com with ESMTP id 2ym31u99af-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 09 Mar 2020 19:47:57 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 029Jh3P4029293;
 Mon, 9 Mar 2020 19:47:56 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by aserp3020.oracle.com with ESMTP id 2ymndf0gt6-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 09 Mar 2020 19:47:56 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 029Jlum6012610;
 Mon, 9 Mar 2020 19:47:56 GMT
Received: from dhcp-10-154-174-145.vpn.oracle.com (/10.154.174.145)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 09 Mar 2020 12:47:56 -0700
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: QUESTION : dracut debugging for kdump
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <CACi5LpNjddawZJciUiSCOYNSwa+G_wN3E+oEz1pGpBJjPX1+oA@mail.gmail.com>
Date: Mon, 9 Mar 2020 14:47:54 -0500
Message-Id: <EC9FD3E5-B439-45E6-AC24-06D27731C71A@oracle.com>
References: <4F31C9D2-6F43-403A-ACC8-7209A33D6684@oracle.com>
 <CACi5LpNjddawZJciUiSCOYNSwa+G_wN3E+oEz1pGpBJjPX1+oA@mail.gmail.com>
To: Bhupesh Sharma <bhsharma@redhat.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9555
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 spamscore=0 bulkscore=0
 mlxscore=0 suspectscore=3 mlxlogscore=999 phishscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003090121
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9555
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 lowpriorityscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 suspectscore=3
 phishscore=0 mlxlogscore=999 mlxscore=0 malwarescore=0 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003090121
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_124759_971783_341864BA 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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



> On Mar 9, 2020, at 1:51 PM, Bhupesh Sharma <bhsharma@redhat.com> wrote:
> 
> Hi John,
> 
> On Mon, Mar 9, 2020 at 10:38 PM John Donnelly
> <john.p.donnelly@oracle.com> wrote:
>> 
>> Hi kexec/kdump  team.
>> 
>> I am not sure if this is the appropriate dlist to ask .  If not ,  I apologize .
>> 
>> 
>> I am having difficulties mounting a iSCSI target under kdump .
> 
> We have had several known issues with iSCSI targets under kdump which
> have been fixed, so just wanted to check which kexec-tools version you
> are using: upstream or fedora?
> 
> Can you please share the output of:
> $ kexec -v

# kexec -v
kexec-tools 2.0.15
/usr/sbin/kexec
# rpm -qf   `which kexec `
kexec-tools-2.0.15-33.0.9.el7.x86_64



> 
>> The target is discovered ,
>> 
>> [ 154.118729] sd 2:0:0:0: [sda] Attached SCSI disk
>> [ OK ] Found device ZFS_Storage_7350 4.
>> Starting File System Check on /dev/...a-5ef4-4838-b5e7-dff852dfc673...
>> [ OK ] Started File System Check on /dev/d...46a-5ef4-4838-b5e7-dff852dfc673.
>> [ 275.766578] dracut-initqueue[420]: Warning: dracut-initqueue timeout - startinging
>> 
>> 
>> The fsck step never finishes, and dracut timeout eventually drops into the rescue shell.
>> 
>> 
>> I can see it is attempting to fsck root from the UUID :
>> 
>> 
>> # blkid | grep b5
>> /dev/sda4: UUID="fb01846a-5ef4-4838-b5e7-dff852dfc673" TYPE="xfs" PARTUUID="f8831f2d-b2c6-4b27-97db-0513e4d3fe42"
>> 3:02
>> " /dev/sda4 30G 3.5G 27G 12% /
>> 
>> 
>> And I mount root manually and look around.
>> 
>> # kdump:/# mkdir /mnt
>> # kdump:/# mount /dev/sda4 /mnt
>> [ 542.856035] SGI XFS with ACLs, security attributes, realtime, scrub, repair, no debug enabled
>> [ 542.885016] XFS (sda4): Mounting V4 Filesystem
>> [ 542.938507] XFS (sda4): Starting recovery (logdev: internal)
>> [ 542.994720] XFS (sda4): Ending recovery (logdev: internal)
>> [ 543.018918] xfs filesystem being mounted at /mnt supports timestamps until 2038 (0x7fffffff)
>> kdump:/#
>> kdump:/#
>> kdump:/# chroot /mnt/ /usr/bin/bash
>> bash-4.2#
>> 
>>   Now my iSCSI  target is mounted as /mnt
>> 
>> 
>> Is there a way start dracut so it stops BEFORE the fsck step  ?  Not after it fails ?
> 
> I think you can try using 'rd.break' dracut option:
> 
>       rd.break={cmdline|pre-udev|pre-trigger|initqueue|pre-mount|mount|pre-pivot|cleanup}
>           drop to a shell on defined breakpoint
> 

  Thanks for the hint !  I will try these. 


> you can specify the same in the kdump bootargs, by modifying a system
> configuration file (for e.g. its '/etc/sysconfig/kdump' on fedora/rhel
> systems).
> 
> For example, you can use 'rd.break=cmdline' to drop to the dracut
> shell to try and see if you can stop it before the 'fsck' step.
> 
> Thanks,
> Bhupesh
> 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
