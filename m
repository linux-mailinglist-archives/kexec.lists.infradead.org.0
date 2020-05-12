Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EAA1CFC59
	for <lists+kexec@lfdr.de>; Tue, 12 May 2020 19:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yr/Nkq5rvtyo1jUQmwGC3wpwe3AJlLfyv2X78z9ttg=; b=WAvoBr2XC1r8x7
	rrSX50qHGw8uzwUzvI6kTVzAMHmWrJOoWTYxmwPqAzXeWHIqvvHcbHry5b4b8gHBFzVgZXjVnDBkH
	3fOkGjt+g7iXCrWMZCNq1XcJX1FXOTNUql6t1pATr1GTTw8GM3XATlze09rUTPj/Dvi3ytQYJCjKm
	xMuA95I2szUIdvxq4SFiYi3tVDhCzLFV8KH0WJlUh8BlNmrpWF61pLDRab888Vk7QmF+1qwxKp4b6
	cXISJCXlEh86IrSD2SkdU2ZgcyBy5ZS3au64zH0DN9ceFucxPNGvzhzkRsqXiGC60pBxYC+QU5YzF
	X50ttSL3J4eXWNwA/zWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYYrq-0007Zm-0K; Tue, 12 May 2020 17:38:58 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYYrl-0007Z7-R9
 for kexec@lists.infradead.org; Tue, 12 May 2020 17:38:55 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04CHWLJi155612;
 Tue, 12 May 2020 17:38:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=content-type :
 mime-version : subject : from : in-reply-to : date : cc :
 content-transfer-encoding : message-id : references : to;
 s=corp-2020-01-29; bh=xIJ+2o2wf0UXh/YXnfvPBNfzeSwVZFeGW9VMygXq2BY=;
 b=bE1BB8Dom44S+7182+CPd4UehPUfIno1qNLZuvO2UoUEpfHcfv8RY1fedfsaaW24Iii7
 QS54Cf1XtLJs4dndhzVsq5rU/WZBd8eDD/JLZ10t9lymEYtAy7UqOpoBiiwRmaOi64Py
 BETeyxE0+U80gLH56RPcHAKIzOU807siecVcS+m1n1dpaHlFq3GgmiogX5z6u+DGR70o
 R3A6xkgPRiCkbQugoIvpyIWUOslh4rv2nv6qSZDlvwCzD6Ti7ocJk2IBB9h9Z/5RehiT
 GWznF9Ke6axo5g4n05zObox5ra/gNmqr9YaU/Wnc+QvAb/PObrb5u8GqszNJeLEZgWVu kg== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 30x3gmmg7q-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 12 May 2020 17:38:48 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.42/8.16.0.42) with SMTP id 04CHY2t8064354;
 Tue, 12 May 2020 17:38:47 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by userp3030.oracle.com with ESMTP id 30ydsqx6dw-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 12 May 2020 17:38:47 +0000
Received: from abhmp0001.oracle.com (abhmp0001.oracle.com [141.146.116.7])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 04CHclrS011047;
 Tue, 12 May 2020 17:38:47 GMT
Received: from dhcp-10-154-142-28.vpn.oracle.com (/10.154.142.28)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Tue, 12 May 2020 10:38:46 -0700
Mime-Version: 1.0 (Mac OS X Mail 11.5 \(3445.9.1\))
Subject: Re: [REQUEST] makedumpfile: stream compress flat ELF format with libz
From: John Donnelly <john.p.donnelly@oracle.com>
In-Reply-To: <20200512172546.GL31850@zorba>
Date: Tue, 12 May 2020 12:38:42 -0500
Message-Id: <69649640-B477-4969-AA2B-2E03587944F1@oracle.com>
References: <20200512172546.GL31850@zorba>
To: "Daniel Walker (danielwa)" <danielwa@cisco.com>
X-Mailer: Apple Mail (2.3445.9.1)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9619
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 suspectscore=0 mlxscore=0
 adultscore=0 mlxlogscore=999 malwarescore=0 bulkscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2003020000
 definitions=main-2005120133
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9619
 signatures=668687
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxlogscore=999
 clxscore=1011 spamscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 malwarescore=0 priorityscore=1501 mlxscore=0 suspectscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2005120133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_103854_012891_0D609DE0 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [156.151.31.86 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org



> On May 12, 2020, at 12:25 PM, Daniel Walker (danielwa) <danielwa@cisco.com> wrote:
> 
> 
> Hi,
> 
> I created an enhancement request for makedumpfile here,
> 
> https://urldefense.com/v3/__https://github.com/makedumpfile/makedumpfile/issues/1__;!!GqivPVa7Brio!LJIWfQ8ged-9RjjV00zqmBGbL2-UU0baDJmxqVXo5AxYcofHzP8oxfWHZZ4ijk6O9N9I$ 
> 
> I found that compressing a flat core with gzip significantly reduces the size of
> the core. Here were my findings,
> 
> 32G flat elf core -E -F -d 0
> 33G kdump core -d 0
> 16G kdump compressed -c -d 0
> 1.9G flat elf core stream compressed with gzip -E -F -d 0
> 
> My feature request was to implement an option inside makedumpfile to gzip
> compress the core output. This can already be accomplished by piping the core
> thru the gzip tool, however, because makedumpfile already links against libz
> having the option for makedumpfile to do it allows the gzip tools to be removed
> from the crash kernels initramfs there by reducing the size.
> 
> Kazuhito Hagio had suggest adding the -C option instead of repurposing -c to do
> this.
> 


  Hi Daniel. 

   -z happens to be used by tar and rsync to indicate compression ;-) . 





> So a resulting command line might looks like this,
> 
> makedumpfile -C -F -E -d 31 /proc/vmcore core.gz
> 
> Thanks,
> Daniel
> _______________________________________________
> kexec mailing list
> kexec@lists.infradead.org
> https://urldefense.com/v3/__http://lists.infradead.org/mailman/listinfo/kexec__;!!GqivPVa7Brio!LJIWfQ8ged-9RjjV00zqmBGbL2-UU0baDJmxqVXo5AxYcofHzP8oxfWHZZ4ijsPXKz5A$ 


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
