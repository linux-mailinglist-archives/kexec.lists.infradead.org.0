Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1707F17E55A
	for <lists+kexec@lfdr.de>; Mon,  9 Mar 2020 18:08:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Message-Id:Subject:Date:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zYu3hAEnEu/ygkOWImUZLYl+BSgfd4c7X5VOEc2vZNo=; b=cC7qB15O0doFoa
	ZidL1eEfGmiWkvGx3n/8WjXzGVyauyyI8Fhlwdxfl42onjsLw2NE8Fa5Bd65PmCr7QWRDK8hsrrt+
	EAlMX4SGk1rdMnhyIl/G1gqHydyQLbZ4Yy0ypTSnlDsmc3v+61fx+sKBZlPHkTMfqigQSJkHtSHjh
	6ifyu721aSuorRaFugQH2pFtTvAZAGvXKnpfIK+XjPbLI/kx/Y/nVsugY2WErRfWX8MEhB/8z09xT
	tcyC9410zN/kQ+TaevUDnJ8ODBlaE/KGGvcAAV5uK6taHT6yqHeOzOPdvWxre1vKh3KGkeEun7ivM
	yrVrrixYY/fg6JmtqG/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLsu-0007Bd-9j; Mon, 09 Mar 2020 17:08:08 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLsq-00076W-5u
 for kexec@lists.infradead.org; Mon, 09 Mar 2020 17:08:05 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 029GxGoj091478
 for <kexec@lists.infradead.org>; Mon, 9 Mar 2020 17:08:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=from : content-type :
 content-transfer-encoding : mime-version : date : subject : message-id :
 to; s=corp-2020-01-29; bh=v/2nuUqDs97h5Op4px5lfo0CwQ4takHRN4tCTsJKfac=;
 b=MfoLu9pyAdCiiGS4+R/tMxMWr1d7bx0U2ViDKYWPTM3SMMP7tx4uUkEoiXXlbeCzWzFf
 puopit/MPH62TqjYB0yGPuZ6RAxnvpmAsNvKIzyipgao0fV5NMMnAx/Ez7crtztkUTi8
 6pjyyvR0AChn//XG+dcgkA6HLprR0hLPgFveNdWVwX34si4CQwyj+SXfhddtTWUW/f8z
 s0MT+BnLp5/LJ6rVhgViJDr+Uqod+c1H3iELI4IkkdTQaCRb9XITmFxnJi8hLI1pPXE5
 c0zdl/T6JyqWZmbhFHNM/bFliCmo19Rqd6l6H3z4gROZQJ+VdlHf5vFxGfXYJI1xqUTo Bg== 
Received: from userp3020.oracle.com (userp3020.oracle.com [156.151.31.79])
 by userp2120.oracle.com with ESMTP id 2ym48sr7cp-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 09 Mar 2020 17:08:01 +0000
Received: from pps.filterd (userp3020.oracle.com [127.0.0.1])
 by userp3020.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 029H139T041606
 for <kexec@lists.infradead.org>; Mon, 9 Mar 2020 17:08:00 GMT
Received: from userv0122.oracle.com (userv0122.oracle.com [156.151.31.75])
 by userp3020.oracle.com with ESMTP id 2ymnb0dbdv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK)
 for <kexec@lists.infradead.org>; Mon, 09 Mar 2020 17:08:00 +0000
Received: from abhmp0003.oracle.com (abhmp0003.oracle.com [141.146.116.9])
 by userv0122.oracle.com (8.14.4/8.14.4) with ESMTP id 029H7wRk009140
 for <kexec@lists.infradead.org>; Mon, 9 Mar 2020 17:08:00 GMT
Received: from dhcp-10-154-174-145.vpn.oracle.com (/10.154.174.145)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 09 Mar 2020 10:07:58 -0700
From: John Donnelly <john.p.donnelly@oracle.com>
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Date: Mon, 9 Mar 2020 12:07:56 -0500
Subject: QUESTION :  dracut debugging for kdump 
Message-Id: <4F31C9D2-6F43-403A-ACC8-7209A33D6684@oracle.com>
To: kexec mailing list <kexec@lists.infradead.org>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9555
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 mlxscore=0 mlxlogscore=999
 spamscore=0 suspectscore=3 adultscore=0 malwarescore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2001150001
 definitions=main-2003090109
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9555
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 bulkscore=0
 impostorscore=0
 mlxlogscore=999 suspectscore=3 priorityscore=1501 lowpriorityscore=0
 phishscore=0 adultscore=0 spamscore=0 mlxscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2003090109
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_100804_358715_9C8102FA 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi kexec/kdump  team.

I am not sure if this is the appropriate dlist to ask .  If not ,  I apologize .


I am having difficulties mounting a iSCSI target under kdump . 

The target is discovered , 

[ 154.118729] sd 2:0:0:0: [sda] Attached SCSI disk
[ OK ] Found device ZFS_Storage_7350 4.
Starting File System Check on /dev/...a-5ef4-4838-b5e7-dff852dfc673...
[ OK ] Started File System Check on /dev/d...46a-5ef4-4838-b5e7-dff852dfc673.
[ 275.766578] dracut-initqueue[420]: Warning: dracut-initqueue timeout - startinging 


The fsck step never finishes, and dracut timeout eventually drops into the rescue shell.


I can see it is attempting to fsck root from the UUID :


# blkid | grep b5
/dev/sda4: UUID="fb01846a-5ef4-4838-b5e7-dff852dfc673" TYPE="xfs" PARTUUID="f8831f2d-b2c6-4b27-97db-0513e4d3fe42"
3:02
" /dev/sda4 30G 3.5G 27G 12% /


And I mount root manually and look around. 

# kdump:/# mkdir /mnt
# kdump:/# mount /dev/sda4 /mnt
[ 542.856035] SGI XFS with ACLs, security attributes, realtime, scrub, repair, no debug enabled
[ 542.885016] XFS (sda4): Mounting V4 Filesystem
[ 542.938507] XFS (sda4): Starting recovery (logdev: internal)
[ 542.994720] XFS (sda4): Ending recovery (logdev: internal)
[ 543.018918] xfs filesystem being mounted at /mnt supports timestamps until 2038 (0x7fffffff)
kdump:/#
kdump:/#
kdump:/# chroot /mnt/ /usr/bin/bash
bash-4.2#

   Now my iSCSI  target is mounted as /mnt 


Is there a way start dracut so it stops BEFORE the fsck step  ?  Not after it fails ?

Thanks,

JD












_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
